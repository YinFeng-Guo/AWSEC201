		
		var demos_config = {
			col_0: 'input',
			col_1: 'input',
			col_2: 'input',
			col_3: 'none',
			col_width: ['30%','40%','30%',null],
			loader: true,
			rows_counter: true,
			rows_counter_text: 'Demos: ',
			sort: true,		
			sort_config: {
				//sort_col: [0,false],
        		sort_types:['String','None','None','None']   
	   		},
			popup_filters: true,
			highlight_keywords: true,
			and_operator: '~~',
			on_filters_loaded: function(o){
				var url = window.location.href; //window url
				if(url.split('?').length > 1)
				{
					var params = url.split('?')[1]; //isolate url params
					for(var i=0; i<params.split('&').length; i++){
						var paramCol = params.split('&')[i].split('=')[0]; //isolate column index
						var paramCriteria = unescape(params.split('&')[i].split('=')[1]); //isolate criteria
						o.SetFilterValue(paramCol, paramCriteria);
					}
					var divUl = tf_Id('divUl'), lis = tf_Tag(divUl, 'li');
					li = lis[lis.length-1];
					if(activeLi) tf_RemoveClass(activeLi, 'active');
					else tf_RemoveClass(tf_Id('defaultLi'), 'active');
					tf_AddClass(li, 'active');
					activeLi = li;
					o.Filter();
				} else {
 					o.SetFilterValue(3, '*Behaviours');
					o.Filter();
				}
			},			
			alternate_rows:true,
			on_keyup:true,
			on_keyup_delay: 1500,
			paging: true,
			paging_length:10,
			filters_row_index: 1,
			btn_prev_page_html: '<input type="button" value="" class="pgInp previousPage" title="Previous page" />',
			btn_next_page_html: '<input type="button" value="" class="pgInp nextPage" title="Next page" />',
			btn_first_page_html: '<input type="button" value="" class="pgInp firstPage" title="First page" />',
			btn_last_page_html: '<input type="button" value="" class="pgInp lastPage" title="Last page" />',
			
			grid_layout: true,
			grid_width: '900px',
			grid_height: '600px',
			grid_enable_cols_resizer: false,
			grid_cont_css_class: 'grdMainCont',
			grid_tblHead_cont_css_class: 'grdHeadCont',
			grid_tbl_cont_css_class: 'grdCont',
			
			selectable: true,
			editable: false,
			ezEditTable_config: {
				key_navigation: false,
				active_row_css: 'grdActiveRow',
				on_validate_row: function(o, row){ 
					var a = o.Tag(row.cells[2], 'a')[0];
					if(!a) return;
					window.open(a.href); 
				}
			}			
		};
	
		var activeLi = null;
		var SetCategory = function(li, category){
			tf.SetFilterValue(3, '*'+category);
			tf.Filter();
			if(activeLi) tf_RemoveClass(activeLi, 'active');
			else tf_RemoveClass(tf_Id('defaultLi'), 'active');
			tf_AddClass(li, 'active');
			activeLi = li;
		};
	
