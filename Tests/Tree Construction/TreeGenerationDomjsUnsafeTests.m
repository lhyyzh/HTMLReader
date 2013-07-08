// This file was autogenerated from Tests/html5lib/tree-construction/domjs-unsafe.dat

#import <SenTestingKit/SenTestingKit.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationDomjsUnsafeTests : SenTestCase

@end

@implementation TreeGenerationDomjsUnsafeTests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo\nbar]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\nbar\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo\rbar]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\nbar\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo\r\nbar]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\nbar\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:[NSString stringWithFormat:@"<script>a='%C'</script>", (unichar)0x0000]];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       \"a='�'\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:[NSString stringWithFormat:@"<script type=\"data\"><!--%C</script>", (unichar)0x0000]];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--�\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:[NSString stringWithFormat:@"<script type=\"data\"><!--foo%C</script>", (unichar)0x0000]];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--foo�\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:[NSString stringWithFormat:@"<script type=\"data\"><!-- foo-%C</script>", (unichar)0x0000]];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-�\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:[NSString stringWithFormat:@"<script type=\"data\"><!-- foo--%C</script>", (unichar)0x0000]];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo--�\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!-- foo-"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!-- foo-<</script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-<\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!-- foo-<S"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-<S\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!-- foo-</SCRIPT>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--<p></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<p>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--<script></script></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script></script>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:[NSString stringWithFormat:@"<script type=\"data\"><!--<script>%C</script></script>", (unichar)0x0000]];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script>�</script>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:[NSString stringWithFormat:@"<script type=\"data\"><!--<script>-%C</script></script>", (unichar)0x0000]];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script>-�</script>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:[NSString stringWithFormat:@"<script type=\"data\"><!--<script>--%C</script></script>", (unichar)0x0000]];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script>--�</script>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test017
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--<script>---</script></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script>---</script>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--<script></scrip></SCRIPT></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script></scrip></SCRIPT>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test019
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--<script></scrip </SCRIPT></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script></scrip </SCRIPT>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test020
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--<script></scrip/</SCRIPT></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script></scrip/</SCRIPT>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test021
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"></scrip/></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"</scrip/>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test022
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"></scrip ></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"</scrip >\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test023
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--</scrip></script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--</scrip>\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test024
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--</scrip </script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--</scrip \"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test025
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script type=\"data\"><!--</scrip/</script>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--</scrip/\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test026
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><!DOCTYPE html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test027
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><!DOCTYPE html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test028
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><head><!DOCTYPE html></head>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test029
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><head></head><!DOCTYPE html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test030
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<body></body><!DOCTYPE html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test031
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><!DOCTYPE html></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test032
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<select><!DOCTYPE html></select>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test033
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><colgroup><!DOCTYPE html></colgroup></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test034
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><colgroup><!--test--></colgroup></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n|         <!-- test -->\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test035
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><colgroup><html></colgroup></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test036
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><colgroup> foo</colgroup></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"foo\"\n|     <table>\n|       <colgroup>\n|         \" \"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test037
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<select><!--test--></select>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <!-- test -->\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test038
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<select><html></select>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test039
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset><html></frameset>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test040
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset></frameset><html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test041
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset></frameset><!DOCTYPE html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test042
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><body></body></html><!DOCTYPE html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test043
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><!DOCTYPE html></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test044
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><font></font></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg font>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test045
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><font id=foo></font></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg font>\n|         id=\"foo\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test046
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><font size=4></font></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <font>\n|       size=\"4\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test047
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><font color=red></font></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <font>\n|       color=\"red\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test048
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><font font=sans></font></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg font>\n|         font=\"sans\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

@end
