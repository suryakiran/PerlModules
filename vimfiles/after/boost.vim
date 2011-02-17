syn keyword boostNamespace   boost filesystem date_time gregorian posix_time variant array lambda assign tuples algorithm program_options logic
syn keyword boostNamespace   qi phoenix karma lex result_of signals2 fusion xpressive spirit bimaps archive property_tree

syn keyword boostClasses     path directory_iterator date date_duration date_period day_clock gregorian_calendar split_iterator alnum_p ch_p
syn keyword boostClasses     text_oarchive text_iarchive tuple ptime regex parameter scoped_array shared_array const_associative_property_map 
syn keyword boostClasses     smatch wsmatch wcmatch wregex match_results reg_expression function any any_cast copy_range shared_ptr weak_ptr eol_p
syn keyword boostClasses     access lexical_cast iterator_facade iterator_core_access indeterminate tribool associative_property_map scoped_ptr
syn keyword boostClasses     c_local_adjustor iterator_range find_iterator date_facet date_input_facet options_description variables_map ptr_set
syn keyword boostClasses     signal format static_visitor mark_tag sregex is_floating_point is_arithmetic advance_c at_c deref fused chlit real_p
syn keyword boostClasses     multi_index_container indexed_by ordered_unique ordered_non_unique value_of ptr_map ptr_vector bimap set_of
syn keyword boostClasses     unordered_set_of multiset_of vector_property_map cmatch serialization unordered_multiset_of digit_p alpha_p space_p
syn keyword boostClasses     intrusive_ptr mem_fn bad_lexical_cast sregex_iterator xml_archive_exception xml_oarchive xml_iarchive allocator str_p
syn keyword boostClasses     heap_clone_allocator rule time_duration time_period anychar_p uint_p enable_if enable_if_c ptree optional
syn keyword boostClasses     xml_writer_settings range_iterator range_result_iterator

syn keyword boostSpirit      char_ int_ double_ lexeme space

syn keyword boostFunctions   current_path initial_path file_string directory_string root_path day trim trim_left list_of as_long_string is_any_of
syn keyword boostFunctions   root_name branch_path leaf is_complete has_root_path has_root_name has_leaf month trim_right is_equal split get as
syn keyword boostFunctions   normalize relative_path has_branch_path default_name_check_writable complete year first_finder reset notify set_close
syn keyword boostFunctions   default_name_check portable_posix_name windows_name portable_name no_check native is_iequal find_all bind as_xpr
syn keyword boostFunctions   portable_file_name portable_directory_name create_directories extension basename make_split_iterator is_empty ret
syn keyword boostFunctions   system_complete change_extension exists symbolic_link_exists is_directory make_find_iterator iends_with is_graph
syn keyword boostFunctions   last_write_time remove_all remove rename copy_file gmtime localtime day_of_week all ifind_all icontains istarts_with
syn keyword boostFunctions   day_number end_of_month_day from_day_number is_leap_year week_number is_infinity set_delimiter set_open store_left
syn keyword boostFunctions   day_of_week is_neg_infinity is_pos_infinity is_not_a_date julian_day week_numbner replace_all time_of_day is_cntrl
syn keyword boostFunctions   to_simple_string to_iso_string to_iso_extened_string local_day universal_day replace_all_copy is_digit match_not_null
syn keyword boostFunctions   utc_to_local from_time_t root_directory has_root_directory has_relative_path starts_with match_any match_not_bow
syn keyword boostFunctions   if_then if_then_else if_then_else_return for_loop constant var ref cref find_first parse_command_line ierase_first
syn keyword boostFunctions   find_last regex_match regex_search match_default match_not_eob match_not_bob static_pointer_cast replace_all_regex
syn keyword boostFunctions   match_not_dot_newline match_not_dot_null format_default format_sed format_perl format_first_only create_directory 
syn keyword boostFunctions   is_punct is_upper to_upper to_upper_copy to_lower to_lower_copy erase_all is_alnum is_classified is_space is_alpha 
syn keyword boostFunctions   is_print make_tuple format_all format_no_copy erase_first save load phrase_parse right equals parse push_back_a
syn keyword boostFunctions   erase_all_regex erase_regex to_iso_extended_string is_xdigit ends_with erase_last add_options assign_a apply_visitor
syn keyword boostFunctions   match_partial match_continuous match_extra match_single_line match_prev_avail iequals match_not_eol match_not_bol
syn keyword boostFunctions   match_not_eow get_optional get_child write_xml put_child read_xml erase_all_copy ierase_all_copy repeat
syn keyword boostFunctions   make_zip_iterator at_key
syn keyword boostFunctions   contains

syn keyword boostTypeTraits  add_reference is_same remove_reference add_pointer

syn keyword boostFlags       token_compress_on

syn keyword boostMacros      BOOST_SERIALIZATION_NVP BOOST_SERIALIZATION_SPLIT_MEMBER BOOST_FOREACH BOOST_CURRENT_FUNCTION BOOST_CLASS_VERSION 
syn keyword boostMacros      BOOST_PARAMETER_NAME BOOST_DEDUCED_TYPENAME BOOST_STATIC_CONSTANT BOOST_AUTO BOOST_PARAMETER_CONST_MEMBER_FUNCTION
syn keyword boostMacros      BOOST_PARAMETER_FUNCTION BOOST_PARAMETER_MEMBER_FUNCTION BOOST_FUSION_ADAPT_STRUCT BOOST_MULTI_INDEX_CONST_MEM_FUN
syn keyword boostMacros      BOOST_MULTI_INDEX_MEM_FUN

syn keyword boostKeywords    required optional

syn keyword boostTypes       value_type left_const_reference left_reference right_reference right_const_reference left_range_type auto_type type
syn keyword boostTypes       allocator_type key_compare right_range_type left_iterator right_iterator left_const_iterator right_const_iterator
syn keyword boostTypes       first_type second_type

syn keyword boostPreProc     BOOST_PP_ENUM_PARAMS BOOST_PP_IF BOOST_PP_EXPR_IF BOOST_PP_ENUM_SHIFTED_PARAMS BOOST_PP_COMMA BOOST_PP_TUPLE_EAT
syn keyword boostPreProc     BOOST_PP_EMPTY BOOST_PP_INC BOOST_PP_DEC

hi def link boostKeywords PreProc
hi def link boostPreProc  PreProc
hi def link boostTypes    cppStlIterators
