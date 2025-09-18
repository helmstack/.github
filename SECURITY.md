# Security Policy

## 🛡️ Supported Versions

We release security updates for the following versions of HelmStack:

| Version | Supported          |
| ------- | ------------------ |
| 1.x.x   | ✅ **Current**     |
| 0.x.x   | ❌ **EOL**         |

## 🚨 Reporting a Vulnerability

We take security seriously. If you discover a security vulnerability in HelmStack, please report it responsibly.

### 📧 Contact Information

**Email**: security@helmstack.dev
**PGP Key**: [Coming Soon]
**Response Time**: 48 hours for initial response

### 📋 What to Include

When reporting a security issue, please include:

1. **Description**: Clear description of the vulnerability
2. **Impact**: What could an attacker accomplish?
3. **Reproduction**: Step-by-step instructions to reproduce
4. **Environment**: OS, Node.js version, HelmStack version
5. **Proof of Concept**: Code or screenshots (if safe to share)

### 🔒 Responsible Disclosure

We follow responsible disclosure practices:

1. **Report**: Send security report to security@helmstack.dev
2. **Acknowledge**: We confirm receipt within 48 hours
3. **Investigate**: We investigate and develop a fix
4. **Coordinate**: We coordinate disclosure timeline with reporter
5. **Release**: Security fix released in coordinated disclosure
6. **Credit**: Reporter credited (unless they prefer anonymity)

### 🏆 Security Bounty

While we don't currently offer monetary rewards, we do provide:

- Public recognition in our security hall of fame
- HelmStack swag and merchandise
- Direct line to our development team for future reports

## 🔐 Security Best Practices

### For Users

- **Keep Updated**: Always use the latest stable version
- **Secure Tokens**: Store API tokens securely (use environment variables)
- **Review Permissions**: Regularly audit GitHub/Jira/Slack permissions
- **Monitor Access**: Watch for unusual access patterns in logs

### For Contributors

- **Dependency Scanning**: Run `npm audit` before submitting PRs
- **Secret Detection**: Use tools like git-secrets to prevent credential leaks
- **Input Validation**: Validate all user inputs and external API responses
- **Principle of Least Privilege**: Request minimal necessary permissions

## 🛠️ Security Features

### Built-in Security

- **Secret Redaction**: Automatic redaction of secrets in logs
- **Input Validation**: JSON Schema validation for all inputs
- **Minimal Permissions**: OAuth scopes limited to necessary operations
- **Atomic Operations**: File operations are atomic to prevent corruption

### Configuration Security

```yaml
# .heckrc security recommendations
secrets:
  # Use environment variables, not hardcoded values
  github_token: env:GITHUB_TOKEN
  jira_token: env:JIRA_API_TOKEN

# Enable security features
security:
  redact_logs: true
  validate_ssl: true
  timeout_ms: 30000
```

## 📊 Security Audit

### Regular Audits

We perform regular security audits:

- **Dependencies**: Weekly automated dependency scans
- **Code**: Quarterly security-focused code reviews
- **Infrastructure**: Annual third-party security assessments

### Audit Logs

HelmStack provides audit logging for security-relevant events:

```bash
# Enable audit logging
heck config --set audit.enabled=true

# View security events
heck audit --filter security --export json
```

## 🚫 Common Vulnerabilities

### What We Protect Against

- **Injection Attacks**: Command injection through user inputs
- **Path Traversal**: Directory traversal in file operations
- **Secret Exposure**: API tokens in logs or error messages
- **CSRF**: Cross-site request forgery in web interfaces
- **Supply Chain**: Malicious dependencies or packages

### What Users Should Avoid

- **Hardcoded Secrets**: Never commit API tokens to git
- **Overprivileged Tokens**: Use minimal necessary OAuth scopes
- **Unvalidated Inputs**: Don't trust external API responses
- **Shared Credentials**: Don't share API tokens between team members

## 📚 Security Resources

### Documentation

- [Authentication Guide](https://docs.helmstack.dev/auth)
- [Secret Management](https://docs.helmstack.dev/secrets)
- [Audit Logging](https://docs.helmstack.dev/audit)

### Tools

- [Security Checklist](https://github.com/helmstack/security-checklist)
- [Audit Scripts](https://github.com/helmstack/audit-tools)

### External Resources

- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [Node.js Security Checklist](https://github.com/lirantal/nodejs-security-checklist)
- [GitHub Security Advisories](https://github.com/advisories)

## 📞 Contact

For non-security related issues, please use:
- GitHub Issues: [helmstack/helmstack](https://github.com/helmstack/helmstack/issues)
- Discussions: [helmstack/helmstack](https://github.com/helmstack/helmstack/discussions)
- Email: hello@helmstack.dev

---

**Remember**: When in doubt, report it. We'd rather investigate a false positive than miss a real security issue.