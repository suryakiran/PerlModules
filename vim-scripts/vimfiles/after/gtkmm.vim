syn keyword gtkmmNameSpace   Gtk Glib Atk Pango Gdk Gtk::AccelMap Gtk::Box_Helpers Gtk::Stock Gtk::Table_Helpers Menu_Helpers
syn keyword gtkmmNameSpace   Gtk::Notebook_Helpers Gtk::ComboDropDown_Helpers Gtk::Menu_Helpers sigc std
syn keyword gtkmmNameSpace   Stock SortType xmlpp Box_Helpers Notebook_Helpers

syn keyword gtkmmClasses     Main Frame Window HBox VBox Button ToggleButton Box Color ustring CheckButton Bin TreeModelFilter TextBuffer TextView Group Region SeparatorElem
syn keyword gtkmmClasses     TextIter TextTag BoxList ListViewText BuiltinStockID RadioMenuElem MenuItem MenuList RadioMenuItem
syn keyword gtkmmClasses     FileFilter FontButton TreeRow UIManager ActionGroup Action AccelKey TreePath IconFactory IconSet StockItem RadioAction RC
syn keyword gtkmmClasses     ToggleButton RadioButton Style Font FontDescription FontFace FontFamily FontMap GC Notebook ProgressBar PageIterator MenuElem
syn keyword gtkmmClasses     FontMetrics FontSet RefPtr Container Label AlignmentEnum Entry FileSelection Dialog Separator SelectionList
syn keyword gtkmmClasses     PropertyProxy FileChooser FileChooserDialog FileChooserAction FilterFlags StockID Element MessageDialog
syn keyword gtkmmClasses     IconLookupFlags IconThemeError FileChooserWidget Allocation Table VSeparator Menu
syn keyword gtkmmClasses     guint gunichar Combo ComboBox ComboBoxText Image HSeparator HButtonBox AboutDialog
syn keyword gtkmmClasses     VButtonBox ButtonBox ButtonBoxStyle ListHandle ComboBoxEntry ComboBoxEntryText
syn keyword gtkmmClasses     EventBox Paned HPaned VPaned ShadowType ScrolledWindow PolicyType TreeModel Row
syn keyword gtkmmClasses     TreeModelColumn ListStore TreeView ColumnRecord Column CellRenderer GdkEvent Path TreeIter
syn keyword gtkmmClasses     CellRendererState Rectangle Drawable Property RadioButtonGroup TreeViewColumn slot
syn keyword gtkmmClasses     SelectionData StateType Selection TreeStore TreeNodeChildren IconView Document
syn keyword gtkmmClasses     SelectionMode TreeRowReference ObjectBase CellEditable TreeSelection Widget Arrow
syn keyword gtkmmClasses     CellRendererText CellRendererToggle CellRendererPixbuf DrawingArea Colormap HRange
syn keyword gtkmmClasses     GdkSegment Bitmap Pixmap AccelGroup Adjustment Point Statusbar AttributeList
syn keyword gtkmmClasses     Settings Requisition Context Layout ArrayHandle Pixbuf connection VRange Range
syn keyword gtkmmClasses     GdkWindowAttr EventMask Cursor Tooltips SpinButton Expander SaxParser AttributeHasName
syn keyword gtkmmClasses     Module MenuToolButton CellRendererCombo

syn keyword gtkmmEvents      GdkEventAny GdkEventFocus GdkEventCrossing GdkEventKey GdkEventButton GdkEvent
syn keyword gtkmmEvents      GdkEventMotion GdkEventSelection GdkEventExpose

syn keyword gtkmmSignals     signal_enter signal_pressed signal_released signal_clicked signal_leave emit signal signal_response signal_show signal_expose_event
syn keyword gtkmmSignals     signal_toggled signal_row_activated signal_item_selected signal_button_press_event connect signal_changed signal_timeout 
syn keyword gtkmmSignals     signal_button_release_event signal_key_press_event signal_style_changed signal_motion_notify_event signal_editing_done 
syn keyword gtkmmSignals     signal_size_allocate signal_cursor_changed signal_value_changed signal_input signal_output signal_insert_text 
syn keyword gtkmmSignals     signal_populate_popup signal_hide signal_edited signal_switch_page signal_activate signal_idle signal_delete_text 

syn keyword gtkmmFuncs       events_pending events_pending_impl init init_gtkmm_internals instance iteration append_column_numeric convert set_buffer
syn keyword gtkmmFuncs       set_expanded scroll_to insert_with_tag parse_file get_spacing get_iter_at_line create_tag get_current set_version 
syn keyword gtkmmFuncs       iteration_impl level level_impl on_window_hide quit quit_impl run run_impl set_red set_sort_column set_copyright set_artists
syn keyword gtkmmFuncs       clear_items set_font_name get_font_name reset_styles get_default set_current_name set_current_folder set_ellipsize 

syn keyword gtkmmFuncs       pack_end add set_border_width set_green set_blue modify_fg modify_bg modify_text remove_all_columns set_comments get_action set_source_rgb line_to
syn keyword gtkmmFuncs       signal_key_snooper signal_quit signal_run set_size_request show_all pack_start gobj set_visible_func get_version get_artists set_line_width stroke
syn keyword gtkmmFuncs       modify_base get_style set_base set_style get_base get_mid set_mid set_text get_text refilter gobj_copy set_logo compose move_to rel_line_to paint
syn keyword gtkmmFuncs       get_single_line_mode insert_action_group add_accel_group set_fraction add_default get_symbol get_last_error set_justify rectangle set_line_join
syn keyword gtkmmFuncs       set_current_page set_filter get_comments append_page get_tab_label_text get_accel_group set_logo_icon_name get_submenu clip set_line_cap show_text
syn keyword gtkmmFuncs       set_dark get_dark set_light get_light set_black get_black set_white get_white move set_modify_func to_string items close_path fill_preserve
syn keyword gtkmmFuncs       set_fg set_bg set_rgb get_font set_font get_family show_all_children attach create set_visible_column create_from_inline 
syn keyword gtkmmFuncs       set_size set_weight get_size get_weight set_family get_active set_active set_label clear_cache add_child get_text_extents get_font_extents
syn keyword gtkmmFuncs       set_position set_rgb_p on_released get_red get_green get_blue modify_font set_modal set_has_separator add_ui_from_string
syn keyword gtkmmFuncs       set_shadow_type get_home_dir set_alignment set_width_chars set_filename set_title add_button set_attribute set_use_stock
syn keyword gtkmmFuncs       get_ok_button get_cancel_button hide_fileop_buttons get_group get_visible get_roo set_substitute_entities 
syn keyword gtkmmFuncs       set_events add_events get_width get_height get_vbox get_hbox set_row_spacings bind add_child_text
syn keyword gtkmmFuncs       set_col_spacings set_row_spacing set_col_spacing validate is_ascii data uppercase get_action_area get_expanded add_pattern
syn keyword gtkmmFuncs       lowercase casefold append_text set_parent get_label add_pixlabel set_use_underline get_root_node
syn keyword gtkmmFuncs       set_spacing set_layout manage get_name get_state get_parent get_children set_policy write_to_file_formatted
syn keyword gtkmmFuncs       set_padding add1 add2 pack pack1 pack2 set_label_align set_label_widget get_fg_gc set_active_text has_default_sort_func
syn keyword gtkmmFuncs       prepend insert insert_after set_reorderable set_default_size set_model hide append_column wrap add_comment 
syn keyword gtkmmFuncs       append_column_editable set_clickable set_resizable get_background get_child select get_active_text unset_default_sort_func
syn keyword gtkmmFuncs       set_group get_shadow_type set_decorations get_decorations set_decorated get_window set_sort_func set_column_title
syn keyword gtkmmFuncs       get_decorated set_headers_visible get_headers_visible get_selection set_mode parent get_sort_column_id
syn keyword gtkmmFuncs       count_selected_rows set_select_function set_markup children iter_depth get_pixbuf append_column_numeric_editable
syn keyword gtkmmFuncs       get_string set_has_frame grab_focus has_focus add_modal_grab remove_modal_grab scroll_to_row
syn keyword gtkmmFuncs       response set_sensitive is_selected empty get_selected get_selected_rows get_model get_column_cell_renderer
syn keyword gtkmmFuncs       get_tree_view set_rules_hint set_headers_clickable get_column get_columns get_mode
syn keyword gtkmmFuncs       set_expand iter_is_valid foreach get_path get_size_request unset_active cast_static
syn keyword gtkmmFuncs       cast_dynamic set_editable get_editable set_activates_default get_activates_default
syn keyword gtkmmFuncs       get_value set_value set_flags get_root_origin get_allocation get_x get_y draw_point
syn keyword gtkmmFuncs       get_first_cell_renderer draw_line
syn keyword gtkmmFuncs       alloc_color set_background set_foreground get_geometry
syn keyword gtkmmFuncs       get_default_colormap draw_rectangle draw_arc set_line_attributes draw_layout get_fg
syn keyword gtkmmFuncs       set_font_description draw_polygon draw_segments get_pixmap set_use_markup get_bg_gc
syn keyword gtkmmFuncs       get_width_chars thaw_child_notify child_notify grab_default freeze_child_notify
syn keyword gtkmmFuncs       region_intersect is_focus set_scroll_adjustments show show_now queue_draw activate
syn keyword gtkmmFuncs       queue_draw_area queue_resize size_request size_allocate add_acclerator get_base_gc
syn keyword gtkmmFuncs       remove_accelerator set_accel_path mnemonic_activate event send_expose intersect
syn keyword gtkmmFuncs       set_name unset_name set_state set_app_paintable set_double_buffered get_toplevel
syn keyword gtkmmFuncs       set_redraw_on_allocate set_child_visible get_child_visible get_parent_window append
syn keyword gtkmmFuncs       set_parent_window child_focus set_extension_events get_extension_events get_events
syn keyword gtkmmFuncs       get_ancestor get_colormap get_visual get_screen has_screen get_display get_pointer
syn keyword gtkmmFuncs       get_root_window get_settings get_clipboard get_accessible set_colormap is_ancestor
syn keyword gtkmmFuncs       translate_coordinates unset_style ensure_style modify_style get_modifier_style
syn keyword gtkmmFuncs       modify_bg_pixmap unset_fg unset_bg unset_text unset_base unset_font render_icon
syn keyword gtkmmFuncs       get_style_property create_pango_context get_pango_context create_pango_layout
syn keyword gtkmmFuncs       set_composite_name unset_composite_name reset_rc_styles get_composite_name get_bg
syn keyword gtkmmFuncs       pop_colormap push_colormap push_composite_child pop_composite_child get_direction
syn keyword gtkmmFuncs       set_default_colormap get_default_style get_default_visual set_direction set_relief
syn keyword gtkmmFuncs       set_default_direction shape_combine_mask reset_shapes class_path drag_highlight
syn keyword gtkmmFuncs       drag_unhighlight drag_dest_set drag_dest_unset drag_dest_set_proxy get_widget
syn keyword gtkmmFuncs       list_mnemonic_labels add_mnemonic_label remove_mnemonic_label drag_get_data reorder
syn keyword gtkmmFuncs       drag_dest_find_target drag_dest_get_target_list drag_dest_set_target_list get_title
syn keyword gtkmmFuncs       drag_source_unset drag_source_set drag_source_set_icon drag_source_get_icon
syn keyword gtkmmFuncs       get_relief set_mnemonic_widget set_cell_data_func add_attribute clear_area get_iter
syn keyword gtkmmFuncs       get_font_description hide_all parse_chunk parse_stream parse_memory finish_chunk_parsing
syn keyword gtkmmFuncs       get_coords get_root_coords set_sort_indicator realize
syn keyword gtkmmFuncs       set_sort_order get_sort_order get_sort_indicator set_text_aa get_max_width set_icon
syn keyword gtkmmFuncs       set_max_width get_min_width enable disconnect block
syn keyword gtkmmFuncs       set_min_width set_renderer unselect_all set_skip_pager_hint reparent
syn keyword gtkmmFuncs       set_type_hint begin_move_drag create_from_xpm_data create_from_xpm create_from_file
syn keyword gtkmmFuncs       set_skip_taskbar_hint set_keep_above get_light_gc get_dark_gc get_mid_gc set_window
syn keyword gtkmmFuncs       move_resize unset_flags set_user_data get_black_gc get_white_gc set_cursor disable
syn keyword gtkmmFuncs       set_tip set_allocation set_height set_width set_x set_y get_red_p get_green_p
syn keyword gtkmmFuncs       get_blue_p get_pixel_size set_range set_increments set_snap_to_ticks set_numeric
syn keyword gtkmmFuncs       set_update_policy set_wrap set_adjustment get_adjustment set_digits get_digits set_application_name
syn keyword gtkmmFuncs       get_value_as_int get_numeric get_update_policy spin get_wrap get_position get_application_name
syn keyword gtkmmFuncs       delete_selection delete_text convert_child_iter_to_iter convert_child_path_to_iter unsetenv setenv
syn keyword gtkmmFuncs       convert_child_path_to_path convert_iter_to_child_iter convert_path_to_child_path get_prgname set_prgname
syn keyword gtkmmFuncs       get_active_row_number get_real_name get_user_name get_tmp_dir get_current_dir path_is_absolute path_skip_root
syn keyword gtkmmFuncs       path_get_basename path_get_dirname build_filename build_path find_program_in_path set_alternative_button_order_from_array

syn keyword gtkmmVirtuals    on_size_allocate on_pressed on_clicked on_enter on_button_press_event paint_check on_response on_start_document on_warning
syn keyword gtkmmVirtuals    on_button_quit get_size_vfunc render_vfunc activate_vfunc on_realize paint_diamond on_error on_fatal_error
syn keyword gtkmmVirtuals    on_selection_received on_row_activated on_selection_get on_selection_notify_event
syn keyword gtkmmVirtuals    on_state_changed on_delete_event draw_indicator_vfunc paint_expander paint_flat_box
syn keyword gtkmmVirtuals    paint_extension paint_polygon paint_option paint_box paint_focus paint_hline on_map
syn keyword gtkmmVirtuals    paint_vline start_editing_vfunc on_expose_event on_button_release_event on_hide
syn keyword gtkmmVirtuals    on_motion_notify_event on_show on_unmap on_unrealize on_size_request on_event
syn keyword gtkmmVirtuals    on_parent_changed on_hierarchy_changed on_style_changed on_direction_changed
syn keyword gtkmmVirtuals    on_grab_notify on_child_notify on_mnemonic_activate on_grab_focus on_focus
syn keyword gtkmmVirtuals    on_scroll_event on_key_press_event on_key_release_event on_enter_notify_event
syn keyword gtkmmVirtuals    on_leave_notify_event on_configure_event on_focus_in_event on_focus_out_event
syn keyword gtkmmVirtuals    on_map_event on_unmap_event on_property_notify on_selection_clear_event on_output 
syn keyword gtkmmVirtuals    on_selection_request_event on_proximity_in_event on_proximity_out_event on_edited
syn keyword gtkmmVirtuals    on_visibility_notify_event on_client_event on_no_expose_event on_window_state_event
syn keyword gtkmmVirtuals    on_property_notify_event on_drag_begin on_drag_end on_drag_data_get paint_shadow
syn keyword gtkmmVirtuals    on_screen_changed on_drag_data_delete on_drag_leave on_drag_motion on_drag_drop
syn keyword gtkmmVirtuals    on_drag_data_received on_get_accessible on_value_changed on_input on_insert_text
syn keyword gtkmmVirtuals    on_insert_at_cursor on_delete_text on_activate on_populate_popup set_value_impl
syn keyword gtkmmVirtuals    on_start_element on_end_element on_characters on_end_document

syn keyword gtkmmEnums       STATE_NORMAL STATE_ACTIVE STATE_INSENSITIVE STATE_PRELIGHT STATE_SELECTED CAN_FOCUS ELLIPSIZE_MIDDLE JUSTIFY_CENTER 
syn keyword gtkmmEnums       STYLE_NORMAL STYLE_OBLIQUE WIN_POS_NONE WIN_POS_CENTER WIN_POS_CENTER_ALWAYS CIRCLE JUSTIFY_LEFT MODULE_BIND_LAZY
syn keyword gtkmmEnums       WIN_POS_MOUSE WIN_POS_CENTER_ON_PARENT WINDOW_TOPLEVEL WINDOW_POPUP WRAP_NONE BOAT
syn keyword gtkmmEnums       WRAP_WORD WRAP_CHAR SHADOW_IN SHADOW_OUT SHADOW_ETCHED_IN SHADOW_ETCHED_OUT CLOCK
syn keyword gtkmmEnums       SHADOW_NONE ALIGN_CENTER ALIGN_LEFT ALIGN_RIGHT ALIGN_TOP ALIGN_BOTTOM ARROW_DOWN
syn keyword gtkmmEnums       FILE_CHOOSER_ACTION_OPEN FILE_CHOOSER_ACTION_SAVE FILE_CHOOSER_ACTION_SELECT_FOLDER
syn keyword gtkmmEnums       FILE_CHOOSER_ACTION_CREATE_FOLDER FILE_FILTER_FILENAME FILE_FILTER_URI PACK_SHRINK
syn keyword gtkmmEnums       FILE_FILTER_DISPLAY_NAME FILE_FILTER_MIME_TYPE BUTTON_PRESS_MASK PACK_EXPAND_WIDGET POINTER_MOTION_HINT_MASK
syn keyword gtkmmEnums       PACK_EXPAND_PADDING BUTTONBOX_SPREAD BUTTONBOX_START BUTTONBOX_DEFAULT_STYLE ARROW
syn keyword gtkmmEnums       BUTTONBOX_EDGE BUTTONBOX_END ICON_SIZE_DIALOG ICON_SIZE_DND EXPAND FILL SHRINK DOT
syn keyword gtkmmEnums       POLICY_NEVER POLICY_ALWAYS POLICY_AUTOMATIC CELL_RENDERER_MODE_ACTIVATABLE X_CURSOR
syn keyword gtkmmEnums       ICON_SIZE_BUTTON SELECTION_MULTIPLE SELECTION_SINGLE DECOR_RESIZEH KEY_PRESS_MASK
syn keyword gtkmmEnums       RESPONSE_NONE RESPONSE_REJECT RESPONSE_DELETE_EVENT RESPONSE_ACCEPT RESPONSE_CANCEL
syn keyword gtkmmEnums       RESPONSE_OK RESPONSE_CLOSE RESPONSE_YES RESPONSE_NO RESPONSE_CLOSE RESPONSE_APPLY
syn keyword gtkmmEnums       RESPONSE_HELP ACCEL_VISIBLE ACCEL_LOCKED ACCEL_MASK SELECTION_BROWSE RELIEF_NONE
syn keyword gtkmmEnums       KEY_RELEASE_MASK BUTTON_RELEASE_MASK POINTER_MOTION_MASK EXPOSURE_MASK STYLE_ITALIC
syn keyword gtkmmEnums       WIDGET_HELP_TOOLTIP WIDGET_HELP_WHATS_THIS RELIEF_NORMAL RELIEF_HALF DOT_BOX GUMBY
syn keyword gtkmmEnums       CELL_RENDERER_SELECTED WEIGHT_BOLD WEIGHT_NORMAL SORT_ASCENDING SORT_DESCENDING
syn keyword gtkmmEnums       WINDOW_TYPE_HINT_SPLASHSCREEN NO_WINDOW GDK_WINDOW_CHILD GDK_INPUT_OUTPUT HAND1
syn keyword gtkmmEnums       BUTTON1_MOTION_MASK BUTTON2_MOTION_MASK BUTTON3_MOTION_MASK BUTTON_MOTION_MASK PLUS
syn keyword gtkmmEnums       ENTER_NOTIFY_MASK LEAVE_NOTIFY_MASK HAND2 ICON HEART ICON_CROSS LEFT_PTR EXCHANGE
syn keyword gtkmmEnums       GOBBLER BOTTOM_LEFT_CORNER BOTTOM_RIGHT_CORNER BOGOSITY BOTTOM_SIDE BOTTOM_TEE
syn keyword gtkmmEnums       BOX_SPIRAL CENTER_PTR COFFEE_MUG CROSS_REVERSE CROSSHAIR DOTBOX DOUBLE_ARROW
syn keyword gtkmmEnums       DRAFT_LARGE DRAFT_SMALL DRAPED_BOX FLEUR LEFT_PTR LEFT_SIDE LEFT_TEE LEFTBUTTON
syn keyword gtkmmEnums       LL_ANGLE LR_ANGLE MAN MIDDLEBUTTON MOUSE PENCIL PIRATE QUESTION_ARROW RIGHT_PTR
syn keyword gtkmmEnums       RIGHT_SIDE RIGHT_TEE RIGHTBUTTON RTL_LOGO SAILBOAT SB_DOWN_ARROW SB_LEFT_ARROW
syn keyword gtkmmEnums       UPDATE_IF_VALID UPDATE_ALWAYS GDK_BUTTON_PRESS GDK_BUTTON_RELEASE
syn keyword gtkmmEnums       GDK_KEY_PRESS GDK_KEY_RELEASE WATCH

syn keyword gtkmmStock       OK REFRESH CANCEL CLOSE SAVE_AS YES NO PREFERENCES DELETE ABOUT QUIT ADD FIND
syn keyword gtkmmProperties  property_expanded property_cell_background property_cell_background_gdk property_xpad property_ypad property_background_set 
syn keyword gtkmmProperties  property_text property_editable property_family property_background property_foreground property_foreground_gdk 
syn keyword gtkmmProperties  property_foreground_set property_width_set property_visible property_show_fileops property_activatable 
syn keyword gtkmmProperties  property_layout_style property_has_separator property_gtk_font_name property_text_column property_model
syn keyword gtkmmProperties  property_title property_stock_id property_do_overwrite_confirmation property_draw_indicator property_background_gdk 
