		
		var menu = {
    		// 一级菜单条长度
    		the_width_of_menu : 960,   	
    		// 一列显示菜单个数
    		the_number_of_menu_items_per_colum: 5,
    		// 菜单长度
    		the_width_of_menu_item : 160,
    		// 菜单长度
    		the_width_of_menu_item_focus : 218,    		
    		animation_speed : 200
    	};
    	
		var host="http://192.168.6.99:8180/ops-index";
		
    	var distance = menu.the_width_of_menu_item_focus + 40 - menu.the_width_of_menu_item;
    
		$(document).ready(function() {
			var backUrl = host+"/static/images/index/back-3.jpg";
			$('#big_image_div').css('background', "url('" + backUrl + "')");
			initMenu();
			getMenu();
			
		}); 
		
		function initMenu() {
			$('#menu').css({'width':(menu.the_width_of_menu + 5) + 'px'});
		}
		
		function getMenu() {
		
			
				//alert($('#loginName').val());
			$.ajax({
				type : 'POST',
				url : host+'/menu/getMenuByAjax',
				data : {
					'customerId':$('#customerId').val()
				},
				dataType : 'json',
				error:function(){alert('error');},
				complete:function(data){},
				success : function(data) {
				//alert(JSON.stringify(data));
//					alert(data.ganttChartContents.length);

					//createTopMenuItems(data.menu.subMenus);
				createTopMenuItems(data);
				}
			});
		}
		
		function createTopMenuItems(topMenuItems) {

//			console.log(topMenuItems);
			// create top menu items
			for (var i = 0; i < topMenuItems.length; i++) {
				
				var $topMenuItemWithSubMenu =  $('<div></div>');
				$topMenuItemWithSubMenu.addClass('top_menu_item_with_sub_menu');
				
				if (i == topMenuItems.length - 1) $topMenuItemWithSubMenu.css('border-right', '0px solid rgba(0, 0, 0, 0.3)');
				
				var $topMenuItem =  $('<div></div>');
				$topMenuItem.addClass('top_menu_item')
				
					.html(topMenuItems[i].name)
					.css({'line-height': '69px', 'width':(menu.the_width_of_menu_item - 40 - 2 - 20), 'height': '69px'})
					.mouseenter(function() {
						
						$('div').finish();
						
						$('.menuPanel').css('display', 'none');
						$('.top_menu_item_with_sub_menu').css('background', '');
						$('.top_menu_item').css('background', '');
						
						if(!$('div').is(':animated')) {
							$(this).parent().prevAll().children('.top_menu_item').animate({width: (menu.the_width_of_menu_item - 40 - 2 - 20)}, menu.animation_speed);
							$(this).parent().nextAll().children('.top_menu_item').animate({width: (menu.the_width_of_menu_item - 40 - 2 - 20)}, menu.animation_speed);
							
							$(this).parent().css('background', '#BE2004');
							$(this).css('background', host+"/static/images/index/nav-diagonals.png");
							
							$(this).animate({width: menu.the_width_of_menu_item_focus}, menu.animation_speed, function() {
								$(this).siblings('.menuPanel').css('display', 'block');
							});
						}
					})
					.mouseleave(function() {
						// $(this).css('background', '')
						//		.siblings('.menuPanel').css('display', 'none');
								
						$(this).siblings('.menuPanel').css('display', 'none');
								
						// animate
						// $(this).animate({width: (menu.the_width_of_menu_item - 40)}, menu.animation_speed);
						
//						console.log('display none');
					})
					.click(function() {
						if($(this).siblings('.menuPanel').css('display') != 'block') {
							$('.menuPanel').css('display', 'none');
							$('.top_menu_item_with_sub_menu').css('background', '');
							$('.top_menu_item').css('background', '');
							
							if(!$('div').is(':animated')) {
								$(this).parent().prevAll().children('.top_menu_item').animate({width: (menu.the_width_of_menu_item - 40 - 2 - 20)}, menu.animation_speed);
								$(this).parent().nextAll().children('.top_menu_item').animate({width: (menu.the_width_of_menu_item - 40 - 2 - 20)}, menu.animation_speed);
								
								$(this).parent().css('background', '#BE2004');
								$(this).css('background', host+"/static/images/index/nav-diagonals.png");
								
								$(this).animate({width: menu.the_width_of_menu_item_focus}, menu.animation_speed, function() {
									$(this).siblings('.menuPanel').css('display', 'block');
								});
							}
						}
					});
					

				// create menu panels	
				var subMenus = topMenuItems[i].subMenus;
				var $menuPanel =  $('<div></div>');
				$menuPanel.attr('id', 'menuPanel_' + i)
							.attr('class', 'menuPanel')
							.mouseenter(function() {
							
								$(this).css('display', 'block');
								$('.top_menu_item').css('background', '');
								$(this).siblings('.top_menu_item').css('background', '#BE2004');

							})
							.mouseleave(function() {
								$(this).css('display', 'none');
							});
				var menuPanelWidth = 0;
				var current_row_having_col_num = 0;
				var current_panel_having_max_col_num = 0;
				var is_enter = 0;
				var the_number_of_menu_items_per_colum_max = 0;
				for (var j = 0; j < subMenus.length; j++) {
					var $subMenuPanel =  $('<div></div>');
					$subMenuPanel.html('<div style="margin-left: 5px"><b>' + subMenus[j].name + '</b></div>');
					$subMenuPanel.css({'float':'left'});
					$subMenuPanel.css({'line-height':'25px'});
					$subMenuPanel.css({'height': menu.the_number_of_menu_items_per_colum * 30 + 'px'});
					$subMenuPanel.css({'color':'#444444', 'text-shadow':'0 1px 0 #FFFFFF'});
					

					var subSubMenus = subMenus[j].subMenus;
					
					if (subSubMenus.length > the_number_of_menu_items_per_colum_max) the_number_of_menu_items_per_colum_max = subSubMenus.length;
					
					var oneZero = 0;
					if ((subSubMenus.length % menu.the_number_of_menu_items_per_colum) == 0) {
						oneZero = 0;
					} else {
						oneZero = 1;
					}
					var col_num =  (subSubMenus.length - (subSubMenus.length % menu.the_number_of_menu_items_per_colum)) / menu.the_number_of_menu_items_per_colum + oneZero;
					
					if (col_num == 0) col_num = 1; 
					
					current_row_having_col_num += col_num;
					if (current_row_having_col_num >= 6) {
						is_enter = 1;
						current_row_having_col_num = 0;
						current_panel_having_max_col_num = 6;;
						menuPanelWidth = 960;
						
						// $subMenuPanel.css({'height': the_number_of_menu_items_per_colum_max * 25 + 'px'});
						// the_number_of_menu_items_per_colum_max = 0;
					} else if (current_row_having_col_num > 6 && menuPanelWidth < 900) {
//						console.log(current_row_having_col_num);
						is_enter = 1;
						current_panel_having_max_col_num = current_row_having_col_num - col_num;
						current_row_having_col_num = col_num;
						menuPanelWidth = current_panel_having_max_col_num * menu.the_width_of_menu_item;
						
						// $subMenuPanel.css({'height': the_number_of_menu_items_per_colum_max * 25 + 'px'});
						// the_number_of_menu_items_per_colum_max = 0;
					}
					
					$subMenuPanel.css('width', maxSix(col_num) * menu.the_width_of_menu_item + 'px');
					
					if (col_num > 6) $subMenuPanel.css({'height': menu.the_number_of_menu_items_per_colum * 30 * 2 - 30 + 'px'});
					
					
					if (is_enter == 0) menuPanelWidth = menuPanelWidth + (col_num * menu.the_width_of_menu_item); 
					if (menuPanelWidth > 960) {
						menuPanelWidth = 960;
					}
					
					if ((menuPanelWidth + i * menu.the_width_of_menu_item) > menu.the_width_of_menu) {
						$menuPanel.css({'left':  -((menuPanelWidth + i * (menu.the_width_of_menu_item - 20)) - menu.the_width_of_menu)});
					} 
					var $subSubMenuPanels = $('<div></div>');
					$subSubMenuPanels.css({'width':menu.the_width_of_menu_item + 'px', 'float':'left'});
					for (var k = 0; k < subSubMenus.length; k++) {
						var $subSubMenuPanel =  $('<div style="margin-left: 5px; color: #666666"></div>');
						$subSubMenuPanel.html('<span>'+ subMenuName(subSubMenus[k].name) + '<span>');

						$subSubMenuPanel.attr('id', subSubMenus[k].href);
						$subSubMenuPanel.attr('class', 'link');
						
						$subSubMenuPanels.append($subSubMenuPanel);
						
						if ((k + 1) % menu.the_number_of_menu_items_per_colum == 0) {
							$subMenuPanel.append($subSubMenuPanels);
							$subSubMenuPanels = $('<div></div>');
							$subSubMenuPanels.css({'width':menu.the_width_of_menu_item + 'px', 'float':'left'});
						}
					}
					if ($subSubMenuPanels.children().size() > 0) $subMenuPanel.append($subSubMenuPanels);
					$menuPanel.append($subMenuPanel);				
				}	
				
				if (the_number_of_menu_items_per_colum_max < 6) $menuPanel.css('height', the_number_of_menu_items_per_colum_max * 25 + 30 + 'px');
				
				if (menuPanelWidth == menu.the_width_of_menu_item) {
					menuPanelWidth += distance;
				}
				$menuPanel.css('width', menuPanelWidth);
				
				$topMenuItemWithSubMenu.append($topMenuItem);
				$topMenuItemWithSubMenu.append($menuPanel);
				$('#menu').append($topMenuItemWithSubMenu);
			}
			
			addEvent();
		}
		
		function maxSix(num) {
			if (num > 6) return 6;
			return num;
		}
		
		function subMenuName(menuName) {
			if(menuName.length > 12) return menuName.substr(0, 12);
			return menuName;
		}
		
		function addEvent() {
			
			$('.link span').mouseover(function () {
				$('.link span').css('background', '');
				$(this).css('cursor', 'pointer');
				$(this).css('background', '#cccccc');
			});
			
			$('.link span').click(function () {
				var url = $(this).parent().attr('id');
				if(url.search("http") == -1) {
					url = '..' + url;
				} 
				window.open(url);
			}); 
		}