syn keyword pocoNamespace   Poco Foundation Util Net XML Data SQLite

syn keyword pocoClasses     Process Environment File WinRegistryKey Args DOMWriter XMLWriter Text AutoPtr Comment HTTPRequest HTTPResponse HTTPMessage HTMLForm StreamCopier XMLString Attributes SAXParser Activity
syn keyword pocoClasses     Timespan HTTPClientSession HTTPSession URI URIStreamOpener HTTPStreamFactory Session Connector Pipe PipeOutputStream PipeInputStream ProcessHandle ContentHandler XMLChar Thread ThreadPool
syn keyword pocoClasses     XMLReader LexicalHandler Locator Path LogStream Logger PatternFormatter FormattingChannel FileChannel ConsoleChannel Message Channel NotificationQueue NotificationCenter Notification
syn keyword pocoClasses     FastMutex Mutex Runnable Random ScopedLock

syn keyword pocoFunctions   set get createDirectory isDirectory canRead canWrite launch message displayText startElement endElement characters startDocument endDocument startPrefixMapping endPrefixMapping append
syn keyword pocoFunctions   createComment getValue getIndex appendChild writeNode setNewLine setOptions setAttribute createElement setURI setMethod prepareSubmit getStatus skippedEntity ignorableWhitespace exists
syn keyword pocoFunctions   setContentType getContentType setTimeout sendRequest receiveResponse copyStream resolve getPathAndQuery setProxyPort setProxyHost getEncoding processingInstruction makeAbsolute isRelative
syn keyword pocoFunctions   setEncoding getHost getPort defaultOpener registerStreamFactory registerConnector unregisterConnector setDocumentLocator createTextNode replaceInPlace getDevice parent toString depth
syn keyword pocoFunctions   setDevice path setChannel create getStream debug trace information critical destroy getExtension icompare joinAll defaultPool collect enqueueNotification dequeueNotification sleep
syn keyword pocoFunctions   waitDequeueNotification wakeUpAll

syn keyword pocoException   NotFoundException FileException SystemException Exception NoThreadAvailableException

syn keyword pocoKeywords    into now use

hi def link pocoKeywords    cppStreams
