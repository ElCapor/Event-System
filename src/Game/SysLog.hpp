#ifndef SYSLOG_HPP
#define SYSLOG_HPP
/*
Simple MACRO log system
*/
#include <raylib.h>

#define INFO(text, ...) TraceLog(LOG_INFO, text, __VA_ARGS__)
#define WARN(text, ...) TraceLog(LOG_WARNING, text, __VA_ARGS__)
#define ERROR(text, ...) TraceLog(LOG_ERROR, text, __VA_ARGS__)

#ifdef _DEBUG
#define DEBUG(text, ...) TraceLog(LOG_DEBUG, text, __VA_ARGS__)
#else
#define DEBUG(text, ...)
#endif // _DEBUG_


#endif // !SYSLOG_HPP