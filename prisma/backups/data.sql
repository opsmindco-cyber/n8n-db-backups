SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict jWxIpQdPIprlKB7VrUQ8ABfM6i3w6gxgXoshKK7MpeBMa9D2HercbJxNzdwNfpT

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Chat User	global	t	2026-05-14 13:31:23.949+00	2026-05-14 13:31:23.949+00
global:owner	Owner	Owner	global	t	2026-05-14 13:29:16.321+00	2026-05-14 13:31:26.209+00
global:admin	Admin	Admin	global	t	2026-05-14 13:29:16.321+00	2026-05-14 13:31:26.209+00
global:member	Member	Member	global	t	2026-05-14 13:29:16.321+00	2026-05-14 13:31:26.209+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-05-14 13:29:16.321+00	2026-05-14 13:31:28.314+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-05-14 13:29:16.321+00	2026-05-14 13:31:28.314+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-05-14 13:29:16.321+00	2026-05-14 13:31:28.314+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-05-14 13:29:16.321+00	2026-05-14 13:31:28.314+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-05-14 13:29:16.321+00	2026-05-14 13:31:28.314+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-05-14 13:31:23.949+00	2026-05-14 13:31:23.949+00
credential:user	Credential User	Credential User	credential	t	2026-05-14 13:31:23.949+00	2026-05-14 13:31:23.949+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-05-14 13:31:23.949+00	2026-05-14 13:31:23.949+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-05-14 13:31:23.949+00	2026-05-14 13:31:23.949+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-05-14 13:31:23.949+00	2026-05-14 13:31:23.949+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-05-14 13:31:23.949+00	2026-05-14 13:31:23.949+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
4ef44031-427a-4fc0-a7f4-dd7c6f680de2	opsmind.co@gmail.com	Opsmind	Techteam	$2a$10$.dt5GQ0I0f0Lj7sAmMPAhOPsYS8/AftjVPTYAjwQ9GLNGnp3vh4/W	{"version":"v4","personalization_survey_submitted_at":"2026-05-14T13:35:47.544Z","personalization_survey_n8n_version":"2.20.7-exp.0","automationGoalDevops":["ticketing-systems-integrations","cloud-infrastructure-orchestration"],"companySize":"<20","companyType":"saas","role":"it","reportedSource":"google"}	2026-05-14 13:25:32.878+00	2026-05-14 13:36:32.324+00	{"userActivated": false}	f	f	\N	\N	2026-05-14	global:owner
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId") FROM stdin;
4hO3vVfmfnw8ZWjq	Opsmind Techteam <opsmind.co@gmail.com>	personal	2026-05-14 13:26:52.923+00	2026-05-14 13:35:38.504+00	\N	\N	4ef44031-427a-4fc0-a7f4-dd7c6f680de2
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId") FROM stdin;
My workflow	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"1130f860-090d-49e7-b74f-0281eb584870","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"a8a42da5-22a1-47ab-a9b7-032ea769e2ca","name":"Create a record"}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	2026-05-14 14:10:58.604+00	2026-05-14 14:11:37.342+00	{"executionOrder":"v1","binaryMode":"separate"}	\N	{}	76622136-fcea-4111-8557-04c0dde223e3	0	Jw0I3ZDo9ud72M2v	\N	\N	f	4	\N	\N
\.


--
-- Data for Name: ai_builder_temporary_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ai_builder_temporary_workflow" ("workflowId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId") FROM stdin;
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt", "tracingContext", "deduplicationKey") FROM stdin;
1	t	manual	\N	\N	2026-05-14 14:11:07.112+00	2026-05-14 14:11:10.412+00	\N	success	Jw0I3ZDo9ud72M2v	\N	2026-05-14 14:11:05.97+00	db	\N	\N
2	t	manual	\N	\N	2026-05-14 14:11:10.972+00	2026-05-14 14:11:14.444+00	\N	success	Jw0I3ZDo9ud72M2v	\N	2026-05-14 14:11:09.85+00	db	\N	\N
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: deployment_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."deployment_key" ("id", "type", "value", "algorithm", "status", "createdAt", "updatedAt") FROM stdin;
gNtcONPzEgLErR84	instance.id	1c794740234619226b7195b4114908a79a6c09c7cdbe10d9c8af702b1915afdf	\N	active	2026-05-14 13:31:18.915+00	2026-05-14 13:31:18.915+00
J6muhXN3BXd79RB5	signing.hmac	83a926202b412cee74da1f21cc1020c569d7ba09b9bf5754eae6d9394f41709c	\N	active	2026-05-14 13:31:20.049+00	2026-05-14 13:31:20.049+00
WcLIoczB0HTIhgCd	signing.jwt	bdf202924ef9e7a4b230eb117d9f94e5e00acd08351513bc6185b4bae7c9e2ad	\N	active	2026-05-14 13:31:21.179+00	2026-05-14 13:31:21.179+00
bSc0GX0KRbS6rZq1	signing.binary_data	vfl7kONmBekwud07RmIemtnWfp/ylyWIGDSNGkgCDtU=	\N	active	2026-05-14 13:31:22.312+00	2026-05-14 13:31:22.312+00
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
1	{"id":"Jw0I3ZDo9ud72M2v","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-05-14T14:10:58.604Z","updatedAt":"2026-05-14T14:11:03.485Z","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"1130f860-090d-49e7-b74f-0281eb584870","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"a6fc3615b852acd97700a550c10bf07fc44a41a6d1a243c2f3514e3232e65a5f",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1778767869529,"source":"18","redaction":"19","triggerNode":"20"},"inclusive",["21"],"manual",{"version":1,"policy":"22"},{"name":"9","type":"23"},{"startTime":1778767870384,"executionIndex":0,"source":"24","hints":"25","executionTime":26,"executionStatus":"26","data":"27"},"none","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"40","Timezone":"42"},{"item":0},"2026-05-14T10:11:10.388-04:00","May 14th 2026, 10:11:10 am","10:11:10 am","Thursday","2026","May","14","10","11","America/New_York (UTC-04:00)"]	dd623b4e-cde3-4aeb-a01c-9073d3909b79
2	{"id":"Jw0I3ZDo9ud72M2v","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-05-14T14:10:58.604Z","updatedAt":"2026-05-14T14:11:03.485Z","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"1130f860-090d-49e7-b74f-0281eb584870","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"f6d923af3f16c350b29b4a5e345dfe1e80f4bdfee24e126a62a7ace9f6eaaf89",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1778767873724,"source":"18","redaction":"19","triggerNode":"20"},"inclusive",["21"],"manual",{"version":1,"policy":"22"},{"name":"9","type":"23"},{"startTime":1778767874443,"executionIndex":0,"source":"24","hints":"25","executionTime":1,"executionStatus":"26","data":"27"},"none","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"39","Timezone":"42"},{"item":0},"2026-05-14T10:11:14.443-04:00","May 14th 2026, 10:11:14 am","10:11:14 am","Thursday","2026","May","14","10","11","America/New_York (UTC-04:00)"]	dd623b4e-cde3-4aeb-a01c-9073d3909b79
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_run_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_run_snapshots" ("threadId", "runId", "messageGroupId", "runIds", "tree", "createdAt", "updatedAt", "langsmithRunId", "langsmithTraceId") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
1	2	20	7	2026-05-14 13:32:24.728+00
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1730386903556	CreateTestDefinitionTable1730386903556
72	1731404028106	AddDescriptionToTestDefinition1731404028106
73	1731582748663	MigrateTestDefinitionKeyToString1731582748663
74	1732271325258	CreateTestMetricTable1732271325258
75	1732549866705	CreateTestRun1732549866705
76	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
77	1734479635324	AddManagedColumnToCredentialsTable1734479635324
78	1736172058779	AddStatsColumnsToTestRun1736172058779
79	1736947513045	CreateTestCaseExecutionTable1736947513045
80	1737715421462	AddErrorColumnsToTestRuns1737715421462
81	1738709609940	CreateFolderTable1738709609940
82	1739549398681	CreateAnalyticsTables1739549398681
83	1740445074052	UpdateParentFolderIdColumn1740445074052
84	1741167584277	RenameAnalyticsToInsights1741167584277
85	1742918400000	AddScopesColumnToApiKeys1742918400000
86	1745322634000	ClearEvaluation1745322634000
87	1745587087521	AddWorkflowStatisticsRootCount1745587087521
88	1745934666076	AddWorkflowArchivedColumn1745934666076
89	1745934666077	DropRoleTable1745934666077
90	1747824239000	AddProjectDescriptionColumn1747824239000
91	1750252139166	AddLastActiveAtColumnToUser1750252139166
92	1750252139166	AddScopeTables1750252139166
93	1750252139167	AddRolesTables1750252139167
94	1750252139168	LinkRoleToUserTable1750252139168
95	1750252139170	RemoveOldRoleColumn1750252139170
96	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
97	1753953244168	LinkRoleToProjectRelationTable1753953244168
98	1754475614601	CreateDataStoreTables1754475614601
99	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
100	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
101	1758731786132	AddAudienceColumnToApiKeys1758731786132
102	1758794506893	AddProjectIdToVariableTable1758794506893
103	1759399811000	ChangeValueTypesForInsights1759399811000
104	1760019379982	CreateChatHubTables1760019379982
105	1760020000000	CreateChatHubAgentTable1760020000000
106	1760020838000	UniqueRoleNames1760020838000
107	1760116750277	CreateOAuthEntities1760116750277
108	1760314000000	CreateWorkflowDependencyTable1760314000000
109	1760965142113	DropUnusedChatHubColumns1760965142113
110	1761047826451	AddWorkflowVersionColumn1761047826451
111	1761655473000	ChangeDependencyInfoToJson1761655473000
112	1761773155024	AddAttachmentsToChatHubMessages1761773155024
113	1761830340990	AddToolsColumnToChatHubTables1761830340990
114	1762177736257	AddWorkflowDescriptionColumn1762177736257
115	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
116	1762771264000	ChangeDefaultForIdInUserTable1762771264000
117	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
118	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
119	1763047800000	AddActiveVersionIdColumn1763047800000
120	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
121	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
122	1763716655000	CreateBinaryDataTable1763716655000
123	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
124	1764276827837	AddCreatorIdToProjectTable1764276827837
125	1764682447000	CreateDynamicCredentialResolverTable1764682447000
126	1764689388394	AddDynamicCredentialEntryTable1764689388394
127	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
128	1765459448000	AddResolvableFieldsToCredentials1765459448000
129	1765788427674	AddIconToAgentTable1765788427674
130	1765804780000	ConvertAgentIdToUuid1765804780000
131	1765886667897	AddAgentIdForeignKeys1765886667897
132	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
133	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
134	1766068346315	AddChatMessageIndices1766068346315
135	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
136	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
137	1768402473068	ExpandModelColumnLength1768402473068
138	1768557000000	AddStoredAtToExecutionEntity1768557000000
139	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
140	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
141	1769433700000	CreateSecretsProviderConnectionTables1769433700000
142	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
143	1769784356000	ExpandSubjectIDColumnLength1769784356000
144	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
145	1770000000000	CreateChatHubToolsTable1770000000000
146	1770000000000	ExpandProviderIdColumnLength1770000000000
147	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
148	1771417407753	AddScalingFieldsToTestRun1771417407753
149	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
150	1771500000001	AddUnshareScopeToCustomRoles1771500000001
151	1771500000002	AddFilesColumnToChatHubAgents1771500000002
152	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
153	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
154	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
155	1772700000000	AddTypeToChatHubSessions1772700000000
156	1772800000000	CreateRoleMappingRuleTable1772800000000
157	1773000000000	CreateCredentialDependencyTable1773000000000
158	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
159	1774854660000	CreateInstanceVersionHistoryTable1774854660000
160	1775000000000	CreateInstanceAiTables1775000000000
161	1775116241000	CreateTokenExchangeJtiTable1775116241000
162	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
163	1776000000000	CreateTrustedKeyTables1776000000000
164	1776150756000	CreateFavoritesTable1776150756000
165	1777000000000	CreateDeploymentKeyTable1777000000000
166	1777023444000	AddJweKeyIndexesToDeploymentKey1777023444000
167	1777045000000	AddTracingContextToExecution1777045000000
168	1777100000000	AddLangsmithIdsToInstanceAiRunSnapshots1777100000000
169	1777281990043	CreateAiBuilderTemporaryWorkflowTable1777281990043
170	1777420800000	ExpandVariablesValueColumnToText1777420800000
171	1778000000000	AddExecutionDeduplicationKey1778000000000
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
4hO3vVfmfnw8ZWjq	4ef44031-427a-4fc0-a7f4-dd7c6f680de2	project:personalOwner	2026-05-14 13:26:52.923+00	2026-05-14 13:26:52.923+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
aiAssistant:*	aiAssistant:*	\N
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
securitySettings:manage	securitySettings:manage	\N
securitySettings:*	securitySettings:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	workflow:execute-chat	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:updateRedactionSetting	workflow:updateRedactionSetting	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:readColumn	dataTable:readColumn	\N
dataTable:writeColumn	dataTable:writeColumn	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
apiKey:manage	apiKey:manage	\N
apiKey:*	apiKey:*	\N
encryptionKey:manage	Manage Encryption Keys	Allows listing and rotating instance encryption keys.
encryptionKey:*	encryptionKey:*	\N
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
credentialResolver:*	credentialResolver:*	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:*	instanceAi:*	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
roleMappingRule:*	roleMappingRule:*	\N
*	*	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	aiAssistant:manage
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:move
global:owner	workflow:updateRedactionSetting
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:readColumn
global:owner	dataTable:writeColumn
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	apiKey:manage
global:owner	encryptionKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	workflow:publish
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	aiAssistant:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	securitySettings:manage
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:generateInviteLink
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:move
global:admin	workflow:updateRedactionSetting
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	insights:read
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:readColumn
global:admin	dataTable:writeColumn
global:admin	dataTable:listProject
global:admin	execution:reveal
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	apiKey:manage
global:admin	encryptionKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	workflow:publish
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	insights:read
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	apiKey:manage
global:member	credentialResolver:list
global:member	instanceAi:message
global:member	instanceAi:gateway
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:move
project:admin	workflow:updateRedactionSetting
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:readColumn
project:admin	dataTable:writeColumn
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:move
project:personalOwner	workflow:updateRedactionSetting
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:readColumn
project:personalOwner	dataTable:writeColumn
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:editor	workflow:unpublish
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:readColumn
project:editor	dataTable:writeColumn
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:readColumn
project:viewer	dataTable:listProject
project:chatUser	workflow:execute-chat
credential:owner	credential:unshare
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:unpublish
workflow:owner	workflow:unshare
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	workflow:publish
workflow:editor	workflow:unpublish
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:publish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5qMy8zb1JZTjRVWDFsN0s5UzBMRmZrRXU1U0VZeWQycEN6MTZucTFYU3hBODNpcDQwZVBuNzl3cTJpY1JCQVZVXG5sNWN3andZa2R5enRxcElyMTNIaFN4eE1JR1MvTWdOTGk1d1RjWEdnY1dGVzZ1NTJiZ3h4elQvTFNhN1FmVUUwXG5rTjQyKzhtMGtLL0hIalNob1RIUjd2NUdTTXY0cE9aOUtqNjJKQVhYRm8yVzYrWGtLaEtRaVRwN0k1anBwRGFUXG5CMCswZ24xMmlJb1poczhodGUreFdya2owRnp2T1VjUWZxVno1YSs1Umh6M2lnMG9PSzN2cUgwci92d3FQeVJ0XG5iS2t1eXhuUWYwa2tzdTErbk8wRk5PcGtLanFFcGs1Z2FKR3l6NWtkNklDeUt4VGNJcDczT3hlQml5ekVRZTFSXG4vMVRFQktmL21SZnNINzV4all6VzBnPT18fFUyRnNkR1ZrWDEvL0JtUmdhMHN3UCtEVTQ5QzFMcUxJYTRSNEdnXG52RndpTVJaNGlIODZkeExkSGZUNU9xQ0ZZeS80VzJmOVYyWXRWRWdvQk1uSTlueXllaStEY3hFeHkxcEVlWk5DXG5WYzRTSEV5SnF2NTZSdVhOT0ZFR3pxN2dtSDFSUVBnbHV5a1IvNGIzTllpSUZva2p5YURidno5YUpUYi9FNTZIXG40NSs0SUExWnJiKzFvUnlqNE56T2I4MVI0aEF2QzdXeEVQOGRjRW1CcGRmZW8zMEg4UkRqNHNKRkJFYXlrcUJsXG55dDNkN2M4Y1lBM2FOTGdDaUlMbWFHNDJpZDNlLzRET1RkdXdDelpFT05GaFVXbUM1a3JHWkU4aUJKbG9GTjVFXG5iV0U1TG1VeWpiaFVXQWtNZEh4OGU4bXhxQ2ExU0hkcEYyZjRTeUJGUUJJc1Q2amdlYWhvdVF1NFNBaFQrZVJvXG4rVDZheEJpbElZR3ZmSVFtemdnbThaWHprT1RwUTJvemhBNVdrV1AveTJTMkp3cWl4b2M4YkFIUDBWQ2xNUURwXG43eFJtSlpqNjMzRTVMeGtlUmtaU2taSEpTMCtGVmpuZXBkY25vU2RmRGF0ODRObWx2TSt4aGR3Yk0vUDZWSzdGXG4rRlFOdHpSVXZpNnEwK1NjTG5uV2ZmQTRkbmJTdlcxUVkzRlBPQk1JNFMzTThoWmlIeUNQRmVLbWtGekQxUzFRXG54ajBVdGpRZ0xoNjlkRXNDYlpBZlgyWnpGdCs1TW5GYmRVTzEzQ0hwOGJ3WlNiZUlCejgxMEYxOGlCZi9ENUNZXG53UUIzL1VCdWJXQXNrc3JoSFRYVEdhdUhsb2VSQVduNUZJM21HbzZ4Z2E1S3Bkc2NnSXhFL3M0anU0cThWODhIXG54WGZBWkZPWStySkthQkQ4Z1JrbGV6WjFEY29CZTRMQmZvZVNIa055ZFRhZndtOFFxcTBDNHhSUm1lUWN4TzdyXG5QUWU2Znh4VVRvd3RyRTVJY2JGNTZvKzIyNDd0R2REQy9EbGpwR0Q0UldERFVLOGZnS25vaFRQZEpBSmlYUUhnXG5ONFVpMWpESTBjam1mU1FwSnlNV2Y3U080T3pVOVNQa1NnbUM2eHdQT0o5V1J2N0IySGNaKzV5Q1pxb252Ukp6XG5ONU9QcDRtaFFHRnh0czVkVlBGUXh1bkpaVG0vNUlYZS9KVnZzY2FJdlNMNk5zaVdwNVNvcm9POGtETlhMRXpCXG5DL3llTWhzZ0FEaTdhMmRzWFF1YWNOWGZoOTBSR3pLMjRqR0tNc2lPVXVIWm9aTU9KelBOK2FYeng0YjM5aWp6XG5ZOTNkS2Y3YUF5SkwyeGdGRnNZM0RyTUpTWiswYW9Ca2MwZWgyS0VJQUhpRUxXMk1aU0prR2V2R0FCZEtSRk5UXG5Ub3pReXJyRXN6emlMREpKTlBaWlpFVDgzUDM5UGhaRHcxZUZUS0hJZzBNZThOV3Nra25RQ1R5ci9qTjdiK1hLXG4xT3JLYWhkQ3dadDRQMTc4N1dTMmUxK2VHdklma0xySlB4WkFSRWlBRVZUMVRyYVJDS0NqN2xBQVRBcHF2Mm4rXG5ocjdTN0dBaUxaeHJxbkUyN24vb0ZnWEc1TjZNdzBHSC95Ry9jMXRTbGpqc1VNaHhSVWdSR0xDZ1NSZkdUdDhTXG5EOW1TNS92REVUZ1dqMlI0UlNabXNUYjA2UzM0YTNHN0VxWDNwUCtVNmVLbEc5blBpK1I2WnBRblJ3T3YxRTJYXG53bm1ETC9WTU5Ucldoa1hrWU1ZcE1aWjJ5NkwzeUZwVHJvazErZDRtMlVpUi95aEIxV3R0UzVhUDZsTTdHMERKXG55SU1HQ2Q0UDBuSFlWMGgzRk51MFRJSTMvMy8zemI1dy94UndmZlh3djgwYnhJRWppTHZCYjFQdytxWVVKZGh0XG5idCt5VkRySHgyUkJqTjVJZk56cjhkdEdZUll4OXFLRERPNWc3UExoQmdQbGtvZTFNZUIxeGs2c1FnUHhrd0RrXG5QWVpXOHlkVExkWFdSOFdIeFF6MUhEak9TYkxzaW1abnA2V1YzVSswc2pKeVFlaGtocE9tWUxFOXQxZjQ4RUN5XG5Kb2x4VXQyY09oMHROREMyek5oN2hOS1R6bFdrR2hJQzFRRVVrMW5FS3RoRG1Rc3BIci9FK0pIS2xWSkh5VjFrXG5vN01zVkJGQTlVOFh1NmE3bW43K3phcEdKVjJRYmtxOWhvMk1DK1ZRWHAzTUs4ZnFrV0lCcWE4Y1pxSmZqWEdRXG5valNWcDR0S2MvMG14WEwrb2NVQ3dvWFRlRWJxZk0vR0ZwSGQybTZuK1RuU252OXpXQjhHb0VtUFFyOTZvZUFjXG4wU1NyeHZYWVR4NDBqRXNvTEkvcjRBTUZyN3VsYlY1MWxZQ1M5T3Z6SVRPV0ZvdDV1cWQ5R1g0RG5vbERxSjEzXG5mM25SZ0RHb1c5ME9JVW9STGNjNWVDa1BITmdwSUxkdW9BT2tPRmF0MEJ3WlMvaWZHZkVNVmIzaS8zRWxZSG1CXG5XL2l0M2lBSzhXc0M0V3RITVNaVlFqUkticmxzNTB6YzcxTG00Z2QrNGNHTVVPTmJ3YWhWbDdPZU5CZ0NWNUg1XG5GRS9yQVp2N3FnSmJWLzdWVzdGWlR1NkxmVHp6b3dBL1E1anM4OTFEZGZyblJvdUFxUHBjOCtMRXhLVHVTUzk0XG5mbVdMb0xmTC9QWXVleGRBY0d0U2RrRmNkQ1ZLVDEwNmR2aEJLMHdqbWhhb29odk4vNThJQ3hYVVVmZ1JPOWxSXG5tN3lKYWlhVUEwUEN6WVFQamxqcDNYVnpKZXpxNVJjejExTit5WG83cDFGVGtjUzFmejRpeEprc1pkcy9XVGdjXG42eHA5eVRIdXBkM3RRclg3L2J4VXRUTVNmdlVKbFBneDNoTjV2bFY1WjkzUmxtN1pydnV0MnJFcC9VL3ZycFlrXG5FQkphd3F4WWNmNUM5TDhnU2lvM2JMWUx6ZlVzWlY3a2RFSTVzdFV0Zjl4RExGb0c0WTNzRGNCWFcvVE9ZTnl6XG5vODltLzg2bWJkTDV1RHArNTN3TlMrZEQ2YStaRHg5bHVUUGg2Zkx4ODJaaHdqcmc9PXx8R1o1c2o5eGdaekxEXG5xTHhIYzdWMUUxMjIyUkJwV3JhVGNTT1Vta1phcXRhbUJ1TGI5b1JZN0tBZHlTWVZ3cFA3VTVHNG42Y1M4RnVoXG5LUmVYU0FXREZRcUhLQVNReXZlRkN0S1ZlemhObCt1TkwxbWk4RTZMMnlIaHZPcGVOUVB0aTlUVkVFYmphNVkxXG5FT0QzL3duRmVLekFJSUZmeFhhMVhZbkVrRGh6eU92cmlPVVNGdGhjQWp6ZGpuTUwwS3VqUFFYdFI1cjZsSElyXG5HVFNuR01RMyt3Y1J2anB2b1ZsQTM3cCtKR2lqZ3kyb3NORHh2Q0lmd2lrS05hOUxpa1pvOExmSFp4SnN2bFBPXG5KblhUc2dPMG9EVjUzZmFnMmR6UGZqbC96NWxNVW5pKzc1MjlRTzdUNnhhY2p6dXVyakRKM3F2K090MGRTQkFRXG5vNFczTFRLc3h3PT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
Jw0I3ZDo9ud72M2v	4hO3vVfmfnw8ZWjq	workflow:owner	2026-05-14 14:10:58.604+00	2026-05-14 14:10:58.604+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience") FROM stdin;
\.


--
-- Data for Name: user_favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_favorites" ("id", "userId", "resourceId", "resourceType") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
5	Jw0I3ZDo9ud72M2v	4	nodeType	n8n-nodes-base.scheduleTrigger	{"nodeId":"1130f860-090d-49e7-b74f-0281eb584870","nodeVersion":1.3}	1	2026-05-14 14:11:39.888+00	\N
6	Jw0I3ZDo9ud72M2v	4	nodeType	n8n-nodes-base.airtable	{"nodeId":"a8a42da5-22a1-47ab-a9b7-032ea769e2ca","nodeVersion":2.2}	1	2026-05-14 14:11:39.888+00	\N
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description") FROM stdin;
dd623b4e-cde3-4aeb-a01c-9073d3909b79	Jw0I3ZDo9ud72M2v	Opsmind Techteam	2026-05-14 14:10:58.604+00	2026-05-14 14:10:58.604+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"1130f860-090d-49e7-b74f-0281eb584870","name":"Schedule Trigger"}]	{}	\N	t	\N
da952386-5a58-4935-b4eb-153288e426f1	Jw0I3ZDo9ud72M2v	Opsmind Techteam	2026-05-14 14:11:31.456+00	2026-05-14 14:11:31.456+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"1130f860-090d-49e7-b74f-0281eb584870","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"a8a42da5-22a1-47ab-a9b7-032ea769e2ca","name":"Create a record"}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
76622136-fcea-4111-8557-04c0dde223e3	Jw0I3ZDo9ud72M2v	Opsmind Techteam	2026-05-14 14:11:37.633+00	2026-05-14 14:11:37.633+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"1130f860-090d-49e7-b74f-0281eb584870","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"a8a42da5-22a1-47ab-a9b7-032ea769e2ca","name":"Create a record"}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
2	2026-05-14 14:11:16.032+00	manual_success	Jw0I3ZDo9ud72M2v	0	1	My workflow
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 2, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instance_version_history_id_seq"', 1, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 171, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: user_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."user_favorites_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 6, true);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 1, false);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_id_seq"', 2, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict jWxIpQdPIprlKB7VrUQ8ABfM6i3w6gxgXoshKK7MpeBMa9D2HercbJxNzdwNfpT

RESET ALL;
