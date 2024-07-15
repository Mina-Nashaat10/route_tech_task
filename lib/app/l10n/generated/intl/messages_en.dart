// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(percent) => "Please wait: ${percent}%";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_name": MessageLookupByLibrary.simpleMessage("App Name"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arabic"),
        "bad_request_error": MessageLookupByLibrary.simpleMessage(
            "Bad request. Please check your input and try again."),
        "bad_response_error": MessageLookupByLibrary.simpleMessage(
            "Bad response. The server returned an invalid response."),
        "cache_error": MessageLookupByLibrary.simpleMessage(
            "Cache error. Unable to retrieve data from cache."),
        "conflict_error": MessageLookupByLibrary.simpleMessage(
            "Conflict error. There is a conflict with the current state of the resource."),
        "data_processing_error": MessageLookupByLibrary.simpleMessage(
            "Data processing error. Unable to process the data."),
        "default_error": MessageLookupByLibrary.simpleMessage(
            "An error occurred. Please try again later."),
        "download_button_progress_title": m0,
        "egp": MessageLookupByLibrary.simpleMessage("EGP"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "forbidden_error": MessageLookupByLibrary.simpleMessage(
            "Access forbidden. You do not have permission to access this resource."),
        "internal_server_error": MessageLookupByLibrary.simpleMessage(
            "Internal server error. Please try again later."),
        "no_content": MessageLookupByLibrary.simpleMessage(
            "No content found matching your request."),
        "no_internet_error": MessageLookupByLibrary.simpleMessage(
            "No internet connection. Please check your internet connection and try again."),
        "no_items_found":
            MessageLookupByLibrary.simpleMessage("No items found."),
        "not_found_error": MessageLookupByLibrary.simpleMessage(
            "Resource not found. The requested resource could not be found."),
        "review": MessageLookupByLibrary.simpleMessage("Review"),
        "search_hint":
            MessageLookupByLibrary.simpleMessage("what do you search for?"),
        "success": MessageLookupByLibrary.simpleMessage("Request successful."),
        "timeout_error": MessageLookupByLibrary.simpleMessage(
            "Request timeout. The request took too long to process."),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again"),
        "unauthorized_error": MessageLookupByLibrary.simpleMessage(
            "Unauthorized access. Please log in with proper credentials."),
        "unknown_error": MessageLookupByLibrary.simpleMessage(
            "Unknown error occurred. Please contact support for assistance.")
      };
}
