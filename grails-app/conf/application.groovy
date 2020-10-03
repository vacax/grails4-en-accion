
//
grails.plugin.springsecurity.rest.token.storage.jwt.secret = asd12D1234dfr123344Fsdcasdd5g78a
//
grails.plugin.springsecurity.rejectIfNoRule = false
grails.plugin.springsecurity.fii.rejectPublicInvocations = false

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'org.javadominicano.domains.Usuario'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'org.javadominicano.domains.UsuarioRol'
grails.plugin.springsecurity.authority.className = 'org.javadominicano.domains.Rol'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
	[pattern: '/sw.js', access: ['permitAll']],
	[pattern: '/api/**', access: ['permitAll']],
	[pattern: '/h2-console/**', access: ['permitAll']]
]

/*grails.plugin.springsecurity.controllerAnnotations.staticRules = [
		[pattern: '/api/pais/**',   access: ['IS_AUTHENTICATED_ANONYMOUSLY']],
		[pattern: '/api/comentario/**', access: ['IS_AUTHENTICATED_ANONYMOUSLY']],
		[pattern: '/api/playa/**', access: ['IS_AUTHENTICATED_ANONYMOUSLY']]
]*/

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']

]

