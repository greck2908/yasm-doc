# $Id$
#
# Requires:
# - xsltproc (usually part of libxslt package)
# - xmllint (usually part of libxml2 package)
# - dblatex (and dependencies) for PDF output
# - tidy for HTML output

XMLLINT?=	xmllint

CLEANFILES+=	${DOC}.xml

include ../share/mk/doc.docbookcore.mk

# XML
${DOC}.xml: ${MASTERDOC} ${SRCS}
	${XMLLINT} --nonet --xinclude ${MASTERDOC} > ${DOC}.xml

