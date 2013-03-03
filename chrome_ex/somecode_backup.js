//delete
	/*
	chrome.bookmarks.getChildren('1',function(bms) {	
		//alert(bms.length);
		for (i = 0; i < bms.length; i++) {
			chrome.bookmarks.remove(bms[i].id);
			//alert(bms[i].id);
		}
	});
	*/
	
	//chrome.bookmarks.remove('1');
	//chrome.bookmarks.create({'parentId': '1',
	//					'title': 'Extensions doc',
     //                    'url': 'http://code.google.com/chrome/extensions'});
	//alert(localStorage["conn"]);
	
	
	
	
	 //errorCode="";
            //current={};
            //current.condition=$(weatherXML).find("current_conditions condition").attr("data");
            //current.temp_c=$(weatherXML).find("current_conditions temp_c").attr("data")+"¢J";
            //current.temp_f=$(weatherXML).find("current_conditions temp_f").attr("data")+"¢K";
            //current.humidity=$(weatherXML).find("current_conditions humidity").attr("data");
            //current.wind_condition=$(weatherXML).find("current_conditions wind_condition").attr("data");
            //current.icon="http://img0.gmodules.com"+$(weatherXML).find("current_conditions icon").attr("data");
            //console.log(current);
			
			
			button click
			$('#deletelink').click(function() {
				$('#deletedialog').empty().dialog({
					   autoOpen: false,
					   title: 'Confirm Deletion',
					   resizable: false,
					   height: 140,
					   modal: true,
					   overlay: {
						 backgroundColor: '#000',
						 opacity: 0.5
					   },
					   buttons: {
						 'Yes, Delete It!': function() {
							chrome.bookmarks.remove(String(bookmarkNode.id));
							span.parent().remove();
							$(this).dialog('destroy');
						  },
						  Cancel: function() {
							$(this).dialog('destroy');
						  }
					   }
				}).dialog('open');
			});
						$('#addlink').click(function() {
				$('#adddialog').empty().append(edit).dialog({autoOpen: false,
				  closeOnEscape: true, title: 'Add New Bookmark', modal: true,
				  buttons: {
				  'Add' : function() {
				  alert(bookmarkNode.id);
						alert(bookmarkNode.id);
					 chrome.bookmarks.create({parentId: bookmarkNode.id,
					   title: $('#title').val(), url: $('#url').val()});
					 $('#bookmarks').empty();
					 $(this).dialog('destroy');
					 window.dumpBookmarks();
				   },
				  'Cancel': function() {
					 $(this).dialog('destroy');
				  }
				}}).dialog('open');
			  });
				  $('#editlink').click(function() {
			   edit.val(anchor.text());
			   $('#editdialog').empty().append(edit).dialog({autoOpen: false,
				 closeOnEscape: true, title: 'Edit Title', modal: true,
				 show: 'slide', buttons: {
					'Save': function() {
						alert(bookmarkNode.id);
					   chrome.bookmarks.update(String(bookmarkNode.id), {
						 title: edit.val()
					   });
					   anchor.text(edit.val());
					   options.show();
					   $(this).dialog('destroy');
					},
				   'Cancel': function() {
					   $(this).dialog('destroy');
				   }
			   }}).dialog('open');
			  });			
