syn keyword boostNamespace   boost filesystem date_time gregorian posix_time variant array lambda assign tuples algorithm program_options logic
syn keyword boostNamespace   qi phoenix karma lex result_of signals2 fusion xpressive spirit bimaps archive property_tree

syn keyword boostClasses     path date date_duration date_period day_clock gregorian_calendar alnum_p ch_p tuple ptime parameter
syn keyword boostClasses     match_results reg_expression function any any_cast copy_range eol_p scoped_array shared_array 
syn keyword boostClasses     access lexical_cast iterator_facade iterator_core_access indeterminate tribool associative_property_map
syn keyword boostClasses     c_local_adjustor iterator_range date_facet date_input_facet options_description variables_map
syn keyword boostClasses     signal format static_visitor mark_tag is_floating_point is_arithmetic advance_c at_c deref fused chlit real_p
syn keyword boostClasses     multi_index_container indexed_by ordered_unique ordered_non_unique value_of bimap set_of
syn keyword boostClasses     unordered_set_of multiset_of vector_property_map serialization unordered_multiset_of digit_p alpha_p space_p
syn keyword boostClasses     mem_fn bad_lexical_cast xml_archive_exception allocator str_p const_associative_property_map 
syn keyword boostClasses     heap_clone_allocator rule time_duration time_period anychar_p uint_p enable_if enable_if_c ptree optional
syn keyword boostClasses     xml_writer_settings

syn match boostClasses "\(text\|xml\)_[oi]archive"
syn match boostClasses "\(shared\|scoped\|weak\|intrusive\)_ptr"
syn match boostClasses "ptr_\(vector\|map\|set\)"
syn match boostClasses "w\?[sc]\?\(regex\|match\)"

syn keyword boostSpirit      char_ int_ double_ lexeme space

syn keyword boostFunctions   current_path initial_path file_string directory_string root_path day trim trim_left list_of as_long_string is_any_of
syn keyword boostFunctions   root_name branch_path leaf is_complete has_root_path has_root_name has_leaf month trim_right is_equal split get as
syn keyword boostFunctions   normalize relative_path has_branch_path default_name_check_writable complete year first_finder reset notify set_close
syn keyword boostFunctions   default_name_check portable_posix_name windows_name portable_name no_check native is_iequal find_all bind as_xpr
syn keyword boostFunctions   portable_file_name portable_directory_name create_directories extension basename make_split_iterator is_empty ret
syn keyword boostFunctions   system_complete change_extension exists symbolic_link_exists is_directory make_find_iterator iends_with is_graph
syn keyword boostFunctions   last_write_time remove_all remove rename copy_file gmtime localtime day_of_week all ifind_all icontains istarts_with
syn keyword boostFunctions   day_number end_of_month_day from_day_number is_leap_year week_number is_infinity set_delimiter set_open store_left
syn keyword boostFunctions   day_of_week is_neg_infinity is_pos_infinity is_not_a_date julian_day week_numbner time_of_day is_cntrl
syn keyword boostFunctions   to_simple_string to_iso_string to_iso_extened_string local_day universal_day is_digit match_not_null
syn keyword boostFunctions   utc_to_local from_time_t root_directory has_root_directory has_relative_path starts_with match_any match_not_bow
syn keyword boostFunctions   if_then if_then_else if_then_else_return for_loop constant var ref cref find_first parse_command_line
syn keyword boostFunctions   find_last regex_match regex_search match_default match_not_eob match_not_bob static_pointer_cast
syn keyword boostFunctions   match_not_dot_newline match_not_dot_null create_directory 
syn keyword boostFunctions   is_punct is_upper is_alnum is_classified is_space is_alpha 
syn keyword boostFunctions   is_print make_tuple save load phrase_parse right equals parse push_back_a
syn keyword boostFunctions   to_iso_extended_string is_xdigit ends_with add_options assign_a apply_visitor
syn keyword boostFunctions   match_partial match_continuous match_extra match_single_line match_prev_avail iequals match_not_eol match_not_bol
syn keyword boostFunctions   match_not_eow get_optional get_child write_xml put_child read_xml repeat make_zip_iterator at_key
syn keyword boostFunctions   contains

syn match boostFunctions "i\?\(replace\|erase\)_\(first\|all\|all_regex\|regex\|last\|all_copy)"
syn match boostFunctions "to_\(upper\|lower\)\(_copy\)\?"
syn match boostFunctions "format_\(default\|sed\|perl\|first_only\|all\|no_copy\)"

syn match boostIterators     "\(directory\|split\|find\|sregex\|range\(_result\)?\)_iterator"

syn keyword boostTypeTraits  add_reference is_same remove_reference add_pointer

syn keyword boostFlags       token_compress_on

syn keyword boostMacros      BOOST_SERIALIZATION_NVP BOOST_SERIALIZATION_SPLIT_MEMBER BOOST_FOREACH BOOST_CURRENT_FUNCTION BOOST_CLASS_VERSION 
syn keyword boostMacros      BOOST_PARAMETER_NAME BOOST_DEDUCED_TYPENAME BOOST_STATIC_CONSTANT BOOST_AUTO BOOST_PARAMETER_CONST_MEMBER_FUNCTION
syn keyword boostMacros      BOOST_PARAMETER_FUNCTION BOOST_PARAMETER_MEMBER_FUNCTION BOOST_FUSION_ADAPT_STRUCT BOOST_MULTI_INDEX_CONST_MEM_FUN
syn keyword boostMacros      BOOST_MULTI_INDEX_MEM_FUN

syn keyword boostKeywords    required optional

syn keyword boostTypes       type key_compare

syn match boostTypes    "\(left_\|right_\)\(const_\)\?\(reference\|iterator\)"
syn match boostTypes    "\(left\|right\)_range_type"
syn match boostTypes    "\(first\|second\|value\|auto\|allocator\)_type"

syn keyword boostPreProc     BOOST_PP_ENUM_PARAMS BOOST_PP_IF BOOST_PP_EXPR_IF BOOST_PP_ENUM_SHIFTED_PARAMS BOOST_PP_COMMA BOOST_PP_TUPLE_EAT
syn keyword boostPreProc     BOOST_PP_EMPTY BOOST_PP_INC BOOST_PP_DEC

hi def link boostKeywords PreProc
hi def link boostPreProc  PreProc
hi def link boostTypes    cppStlIterators
