//
//  Repository.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/20.
//

import Foundation

struct Response: Codable {
    let totalCount: Int
    let incompleteResults: Bool
    let items: [Repository]
}

struct Repository : Codable {
    public let allowMergeCommit : Bool?
    public let allowRebaseMerge : Bool?
    public let allowSquashMerge : Bool?
    public let archiveUrl : String?
    public let archived : Bool?
    public let assigneesUrl : String?
    public let blobsUrl : String?
    public let branchesUrl : String?
    public let cloneUrl : String?
    public let collaboratorsUrl : String?
    public let commentsUrl : String?
    public let commitsUrl : String?
    public let compareUrl : String?
    public let contentsUrl : String?
    public let contributorsUrl : String?
    public let createdAt : String?
    public let defaultBranch : String?
    public let deploymentsUrl : String?
    public let descriptionField : String?
    public let downloadsUrl : String?
    public let eventsUrl : String?
    public let fork : Bool?
    public let forksCount : Int?
    public let forksUrl : String?
    public let fullName : String?
    public let gitCommitsUrl : String?
    public let gitRefsUrl : String?
    public let gitTagsUrl : String?
    public let gitUrl : String?
    public let hasDownloads : Bool?
    public let hasIssues : Bool?
    public let hasPages : Bool?
    public let hasWiki : Bool?
    public let homepage : String?
    public let hooksUrl : String?
    public let htmlUrl : String?
    public let id : Int?
    public let issueCommentUrl : String?
    public let issueEventsUrl : String?
    public let issuesUrl : String?
    public let keysUrl : String?
    public let labelsUrl : String?
    public let language : String?
    public let languagesUrl : String?
    public let license : RepositoryLicense?
    public let mergesUrl : String?
    public let milestonesUrl : String?
    public let mirrorUrl : String?
    public let name : String?
    public let networkCount : Int?
    public let notificationsUrl : String?
    public let openIssuesCount : Int?
    public let organization : RepositoryOrganization?
    public let owner : RepositoryOrganization?
    public let parent : RepositoryParent?
    public let permissions : RepositoryPermission?
    public let privateField : Bool?
    public let pullsUrl : String?
    public let pushedAt : String?
    public let releasesUrl : String?
    public let size : Int?
    public let source : RepositoryParent?
    public let sshUrl : String?
    public let stargazersCount : Int?
    public let stargazersUrl : String?
    public let statusesUrl : String?
    public let subscribersCount : Int?
    public let subscribersUrl : String?
    public let subscriptionUrl : String?
    public let svnUrl : String?
    public let tagsUrl : String?
    public let teamsUrl : String?
    public let topics : [String]?
    public let treesUrl : String?
    public let updatedAt : String?
    public let url : String?
    public let watchersCount : Int?


    enum CodingKeys: String, CodingKey {
        case allowMergeCommit = "allow_merge_commit"
        case allowRebaseMerge = "allow_rebase_merge"
        case allowSquashMerge = "allow_squash_merge"
        case archiveUrl = "archive_url"
        case archived
        case assigneesUrl = "assignees_url"
        case blobsUrl = "blobs_url"
        case branchesUrl = "branches_url"
        case cloneUrl = "clone_url"
        case collaboratorsUrl = "collaborators_url"
        case commentsUrl = "comments_url"
        case commitsUrl = "commits_url"
        case compareUrl = "compare_url"
        case contentsUrl = "contents_url"
        case contributorsUrl = "contributors_url"
        case createdAt = "created_at"
        case defaultBranch = "default_branch"
        case deploymentsUrl = "deployments_url"
        case descriptionField = "description"
        case downloadsUrl = "downloads_url"
        case eventsUrl = "events_url"
        case fork
        case forksCount = "forks_count"
        case forksUrl = "forks_url"
        case fullName = "full_name"
        case gitCommitsUrl = "git_commits_url"
        case gitRefsUrl = "git_refs_url"
        case gitTagsUrl = "git_tags_url"
        case gitUrl = "git_url"
        case hasDownloads = "has_downloads"
        case hasIssues = "has_issues"
        case hasPages = "has_pages"
        case hasWiki = "has_wiki"
        case homepage
        case hooksUrl = "hooks_url"
        case htmlUrl = "html_url"
        case id
        case issueCommentUrl = "issue_comment_url"
        case issueEventsUrl = "issue_events_url"
        case issuesUrl = "issues_url"
        case keysUrl = "keys_url"
        case labelsUrl = "labels_url"
        case language
        case languagesUrl = "languages_url"
        case license
        case mergesUrl = "merges_url"
        case milestonesUrl = "milestones_url"
        case mirrorUrl = "mirror_url"
        case name
        case networkCount = "network_count"
        case notificationsUrl = "notifications_url"
        case openIssuesCount = "open_issues_count"
        case organization
        case owner
        case parent
        case permissions
        case privateField = "private"
        case pullsUrl = "pulls_url"
        case pushedAt = "pushed_at"
        case releasesUrl = "releases_url"
        case size
        case source
        case sshUrl = "ssh_url"
        case stargazersCount = "stargazers_count"
        case stargazersUrl = "stargazers_url"
        case statusesUrl = "statuses_url"
        case subscribersCount = "subscribers_count"
        case subscribersUrl = "subscribers_url"
        case subscriptionUrl = "subscription_url"
        case svnUrl = "svn_url"
        case tagsUrl = "tags_url"
        case teamsUrl = "teams_url"
        case topics
        case treesUrl = "trees_url"
        case updatedAt = "updated_at"
        case url
        case watchersCount = "watchers_count"
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        allowMergeCommit = try values.decodeIfPresent(Bool.self, forKey: .allowMergeCommit)
        allowRebaseMerge = try values.decodeIfPresent(Bool.self, forKey: .allowRebaseMerge)
        allowSquashMerge = try values.decodeIfPresent(Bool.self, forKey: .allowSquashMerge)
        archiveUrl = try values.decodeIfPresent(String.self, forKey: .archiveUrl)
        archived = try values.decodeIfPresent(Bool.self, forKey: .archived)
        assigneesUrl = try values.decodeIfPresent(String.self, forKey: .assigneesUrl)
        blobsUrl = try values.decodeIfPresent(String.self, forKey: .blobsUrl)
        branchesUrl = try values.decodeIfPresent(String.self, forKey: .branchesUrl)
        cloneUrl = try values.decodeIfPresent(String.self, forKey: .cloneUrl)
        collaboratorsUrl = try values.decodeIfPresent(String.self, forKey: .collaboratorsUrl)
        commentsUrl = try values.decodeIfPresent(String.self, forKey: .commentsUrl)
        commitsUrl = try values.decodeIfPresent(String.self, forKey: .commitsUrl)
        compareUrl = try values.decodeIfPresent(String.self, forKey: .compareUrl)
        contentsUrl = try values.decodeIfPresent(String.self, forKey: .contentsUrl)
        contributorsUrl = try values.decodeIfPresent(String.self, forKey: .contributorsUrl)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        defaultBranch = try values.decodeIfPresent(String.self, forKey: .defaultBranch)
        deploymentsUrl = try values.decodeIfPresent(String.self, forKey: .deploymentsUrl)
        descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
        downloadsUrl = try values.decodeIfPresent(String.self, forKey: .downloadsUrl)
        eventsUrl = try values.decodeIfPresent(String.self, forKey: .eventsUrl)
        fork = try values.decodeIfPresent(Bool.self, forKey: .fork)
        forksCount = try values.decodeIfPresent(Int.self, forKey: .forksCount)
        forksUrl = try values.decodeIfPresent(String.self, forKey: .forksUrl)
        fullName = try values.decodeIfPresent(String.self, forKey: .fullName)
        gitCommitsUrl = try values.decodeIfPresent(String.self, forKey: .gitCommitsUrl)
        gitRefsUrl = try values.decodeIfPresent(String.self, forKey: .gitRefsUrl)
        gitTagsUrl = try values.decodeIfPresent(String.self, forKey: .gitTagsUrl)
        gitUrl = try values.decodeIfPresent(String.self, forKey: .gitUrl)
        hasDownloads = try values.decodeIfPresent(Bool.self, forKey: .hasDownloads)
        hasIssues = try values.decodeIfPresent(Bool.self, forKey: .hasIssues)
        hasPages = try values.decodeIfPresent(Bool.self, forKey: .hasPages)
        hasWiki = try values.decodeIfPresent(Bool.self, forKey: .hasWiki)
        homepage = try values.decodeIfPresent(String.self, forKey: .homepage)
        hooksUrl = try values.decodeIfPresent(String.self, forKey: .hooksUrl)
        htmlUrl = try values.decodeIfPresent(String.self, forKey: .htmlUrl)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        issueCommentUrl = try values.decodeIfPresent(String.self, forKey: .issueCommentUrl)
        issueEventsUrl = try values.decodeIfPresent(String.self, forKey: .issueEventsUrl)
        issuesUrl = try values.decodeIfPresent(String.self, forKey: .issuesUrl)
        keysUrl = try values.decodeIfPresent(String.self, forKey: .keysUrl)
        labelsUrl = try values.decodeIfPresent(String.self, forKey: .labelsUrl)
        language = try values.decodeIfPresent(String.self, forKey: .language)
        languagesUrl = try values.decodeIfPresent(String.self, forKey: .languagesUrl)
        license = try values.decodeIfPresent(RepositoryLicense.self, forKey: .license)
        mergesUrl = try values.decodeIfPresent(String.self, forKey: .mergesUrl)
        milestonesUrl = try values.decodeIfPresent(String.self, forKey: .milestonesUrl)
        mirrorUrl = try values.decodeIfPresent(String.self, forKey: .mirrorUrl)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        networkCount = try values.decodeIfPresent(Int.self, forKey: .networkCount)
        notificationsUrl = try values.decodeIfPresent(String.self, forKey: .notificationsUrl)
        openIssuesCount = try values.decodeIfPresent(Int.self, forKey: .openIssuesCount)
        organization = try values.decodeIfPresent(RepositoryOrganization.self, forKey: .organization)
        owner = try values.decodeIfPresent(RepositoryOrganization.self, forKey: .owner)
        parent = try values.decodeIfPresent(RepositoryParent.self, forKey: .parent)
        permissions = try values.decodeIfPresent(RepositoryPermission.self, forKey: .permissions)
        privateField = try values.decodeIfPresent(Bool.self, forKey: .privateField)
        pullsUrl = try values.decodeIfPresent(String.self, forKey: .pullsUrl)
        pushedAt = try values.decodeIfPresent(String.self, forKey: .pushedAt)
        releasesUrl = try values.decodeIfPresent(String.self, forKey: .releasesUrl)
        size = try values.decodeIfPresent(Int.self, forKey: .size)
        source = try values.decodeIfPresent(RepositoryParent.self, forKey: .source)
        sshUrl = try values.decodeIfPresent(String.self, forKey: .sshUrl)
        stargazersCount = try values.decodeIfPresent(Int.self, forKey: .stargazersCount)
        stargazersUrl = try values.decodeIfPresent(String.self, forKey: .stargazersUrl)
        statusesUrl = try values.decodeIfPresent(String.self, forKey: .statusesUrl)
        subscribersCount = try values.decodeIfPresent(Int.self, forKey: .subscribersCount)
        subscribersUrl = try values.decodeIfPresent(String.self, forKey: .subscribersUrl)
        subscriptionUrl = try values.decodeIfPresent(String.self, forKey: .subscriptionUrl)
        svnUrl = try values.decodeIfPresent(String.self, forKey: .svnUrl)
        tagsUrl = try values.decodeIfPresent(String.self, forKey: .tagsUrl)
        teamsUrl = try values.decodeIfPresent(String.self, forKey: .teamsUrl)
        topics = try values.decodeIfPresent([String].self, forKey: .topics)
        treesUrl = try values.decodeIfPresent(String.self, forKey: .treesUrl)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        watchersCount = try values.decodeIfPresent(Int.self, forKey: .watchersCount)
    }
}


public struct RepositoryLicense : Codable {
    public let htmlUrl : String?
    public let key : String?
    public let name : String?
    public let spdxId : String?
    public let url : String?

    enum CodingKeys: String, CodingKey {
        case htmlUrl = "html_url"
        case key
        case name
        case spdxId = "spdx_id"
        case url
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        htmlUrl = try values.decodeIfPresent(String.self, forKey: .htmlUrl)
        key = try values.decodeIfPresent(String.self, forKey: .key)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        spdxId = try values.decodeIfPresent(String.self, forKey: .spdxId)
        url = try values.decodeIfPresent(String.self, forKey: .url)
    }
}


struct RepositoryOrganization : Codable {
    public let avatarUrl : String?
    public let eventsUrl : String?
    public let followersUrl : String?
    public let followingUrl : String?
    public let gistsUrl : String?
    public let gravatarId : String?
    public let htmlUrl : String?
    public let id : Int?
    public let login : String?
    public let organizationsUrl : String?
    public let receivedEventsUrl : String?
    public let reposUrl : String?
    public let siteAdmin : Bool?
    public let starredUrl : String?
    public let subscriptionsUrl : String?
    public let type : String?
    public let url : String?

    enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case eventsUrl = "events_url"
        case followersUrl = "followers_url"
        case followingUrl = "following_url"
        case gistsUrl = "gists_url"
        case gravatarId = "gravatar_id"
        case htmlUrl = "html_url"
        case id
        case login
        case organizationsUrl = "organizations_url"
        case receivedEventsUrl = "received_events_url"
        case reposUrl = "repos_url"
        case siteAdmin = "site_admin"
        case starredUrl = "starred_url"
        case subscriptionsUrl = "subscriptions_url"
        case type
        case url
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        avatarUrl = try values.decodeIfPresent(String.self, forKey: .avatarUrl)
        eventsUrl = try values.decodeIfPresent(String.self, forKey: .eventsUrl)
        followersUrl = try values.decodeIfPresent(String.self, forKey: .followersUrl)
        followingUrl = try values.decodeIfPresent(String.self, forKey: .followingUrl)
        gistsUrl = try values.decodeIfPresent(String.self, forKey: .gistsUrl)
        gravatarId = try values.decodeIfPresent(String.self, forKey: .gravatarId)
        htmlUrl = try values.decodeIfPresent(String.self, forKey: .htmlUrl)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        login = try values.decodeIfPresent(String.self, forKey: .login)
        organizationsUrl = try values.decodeIfPresent(String.self, forKey: .organizationsUrl)
        receivedEventsUrl = try values.decodeIfPresent(String.self, forKey: .receivedEventsUrl)
        reposUrl = try values.decodeIfPresent(String.self, forKey: .reposUrl)
        siteAdmin = try values.decodeIfPresent(Bool.self, forKey: .siteAdmin)
        starredUrl = try values.decodeIfPresent(String.self, forKey: .starredUrl)
        subscriptionsUrl = try values.decodeIfPresent(String.self, forKey: .subscriptionsUrl)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        url = try values.decodeIfPresent(String.self, forKey: .url)
    }
}


struct RepositoryParent : Codable {
    public let allowMergeCommit : Bool?
    public let allowRebaseMerge : Bool?
    public let allowSquashMerge : Bool?
    public let archiveUrl : String?
    public let archived : Bool?
    public let assigneesUrl : String?
    public let blobsUrl : String?
    public let branchesUrl : String?
    public let cloneUrl : String?
    public let collaboratorsUrl : String?
    public let commentsUrl : String?
    public let commitsUrl : String?
    public let compareUrl : String?
    public let contentsUrl : String?
    public let contributorsUrl : String?
    public let createdAt : String?
    public let defaultBranch : String?
    public let deploymentsUrl : String?
    public let descriptionField : String?
    public let downloadsUrl : String?
    public let eventsUrl : String?
    public let fork : Bool?
    public let forksCount : Int?
    public let forksUrl : String?
    public let fullName : String?
    public let gitCommitsUrl : String?
    public let gitRefsUrl : String?
    public let gitTagsUrl : String?
    public let gitUrl : String?
    public let hasDownloads : Bool?
    public let hasIssues : Bool?
    public let hasPages : Bool?
    public let hasWiki : Bool?
    public let homepage : String?
    public let hooksUrl : String?
    public let htmlUrl : String?
    public let id : Int?
    public let issueCommentUrl : String?
    public let issueEventsUrl : String?
    public let issuesUrl : String?
    public let keysUrl : String?
    public let labelsUrl : String?
    public let language : String?
    public let languagesUrl : String?
    public let mergesUrl : String?
    public let milestonesUrl : String?
    public let mirrorUrl : String?
    public let name : String?
    public let networkCount : Int?
    public let notificationsUrl : String?
    public let openIssuesCount : Int?
    public let owner : RepositoryOrganization?
    public let permissions : RepositoryPermission?
    public let privateField : Bool?
    public let pullsUrl : String?
    public let pushedAt : String?
    public let releasesUrl : String?
    public let size : Int?
    public let sshUrl : String?
    public let stargazersCount : Int?
    public let stargazersUrl : String?
    public let statusesUrl : String?
    public let subscribersCount : Int?
    public let subscribersUrl : String?
    public let subscriptionUrl : String?
    public let svnUrl : String?
    public let tagsUrl : String?
    public let teamsUrl : String?
    public let topics : [String]?
    public let treesUrl : String?
    public let updatedAt : String?
    public let url : String?
    public let watchersCount : Int?

    enum CodingKeys: String, CodingKey {
        case allowMergeCommit = "allow_merge_commit"
        case allowRebaseMerge = "allow_rebase_merge"
        case allowSquashMerge = "allow_squash_merge"
        case archiveUrl = "archive_url"
        case archived = "archived"
        case assigneesUrl = "assignees_url"
        case blobsUrl = "blobs_url"
        case branchesUrl = "branches_url"
        case cloneUrl = "clone_url"
        case collaboratorsUrl = "collaborators_url"
        case commentsUrl = "comments_url"
        case commitsUrl = "commits_url"
        case compareUrl = "compare_url"
        case contentsUrl = "contents_url"
        case contributorsUrl = "contributors_url"
        case createdAt = "created_at"
        case defaultBranch = "default_branch"
        case deploymentsUrl = "deployments_url"
        case descriptionField = "description"
        case downloadsUrl = "downloads_url"
        case eventsUrl = "events_url"
        case fork
        case forksCount = "forks_count"
        case forksUrl = "forks_url"
        case fullName = "full_name"
        case gitCommitsUrl = "git_commits_url"
        case gitRefsUrl = "git_refs_url"
        case gitTagsUrl = "git_tags_url"
        case gitUrl = "git_url"
        case hasDownloads = "has_downloads"
        case hasIssues = "has_issues"
        case hasPages = "has_pages"
        case hasWiki = "has_wiki"
        case homepage = "homepage"
        case hooksUrl = "hooks_url"
        case htmlUrl = "html_url"
        case id
        case issueCommentUrl = "issue_comment_url"
        case issueEventsUrl = "issue_events_url"
        case issuesUrl = "issues_url"
        case keysUrl = "keys_url"
        case labelsUrl = "labels_url"
        case language
        case languagesUrl = "languages_url"
        case mergesUrl = "merges_url"
        case milestonesUrl = "milestones_url"
        case mirrorUrl = "mirror_url"
        case name
        case networkCount = "network_count"
        case notificationsUrl = "notifications_url"
        case openIssuesCount = "open_issues_count"
        case owner
        case permissions
        case privateField = "private"
        case pullsUrl = "pulls_url"
        case pushedAt = "pushed_at"
        case releasesUrl = "releases_url"
        case size
        case sshUrl = "ssh_url"
        case stargazersCount = "stargazers_count"
        case stargazersUrl = "stargazers_url"
        case statusesUrl = "statuses_url"
        case subscribersCount = "subscribers_count"
        case subscribersUrl = "subscribers_url"
        case subscriptionUrl = "subscription_url"
        case svnUrl = "svn_url"
        case tagsUrl = "tags_url"
        case teamsUrl = "teams_url"
        case topics
        case treesUrl = "trees_url"
        case updatedAt = "updated_at"
        case url
        case watchersCount = "watchers_count"
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        allowMergeCommit = try values.decodeIfPresent(Bool.self, forKey: .allowMergeCommit)
        allowRebaseMerge = try values.decodeIfPresent(Bool.self, forKey: .allowRebaseMerge)
        allowSquashMerge = try values.decodeIfPresent(Bool.self, forKey: .allowSquashMerge)
        archiveUrl = try values.decodeIfPresent(String.self, forKey: .archiveUrl)
        archived = try values.decodeIfPresent(Bool.self, forKey: .archived)
        assigneesUrl = try values.decodeIfPresent(String.self, forKey: .assigneesUrl)
        blobsUrl = try values.decodeIfPresent(String.self, forKey: .blobsUrl)
        branchesUrl = try values.decodeIfPresent(String.self, forKey: .branchesUrl)
        cloneUrl = try values.decodeIfPresent(String.self, forKey: .cloneUrl)
        collaboratorsUrl = try values.decodeIfPresent(String.self, forKey: .collaboratorsUrl)
        commentsUrl = try values.decodeIfPresent(String.self, forKey: .commentsUrl)
        commitsUrl = try values.decodeIfPresent(String.self, forKey: .commitsUrl)
        compareUrl = try values.decodeIfPresent(String.self, forKey: .compareUrl)
        contentsUrl = try values.decodeIfPresent(String.self, forKey: .contentsUrl)
        contributorsUrl = try values.decodeIfPresent(String.self, forKey: .contributorsUrl)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        defaultBranch = try values.decodeIfPresent(String.self, forKey: .defaultBranch)
        deploymentsUrl = try values.decodeIfPresent(String.self, forKey: .deploymentsUrl)
        descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
        downloadsUrl = try values.decodeIfPresent(String.self, forKey: .downloadsUrl)
        eventsUrl = try values.decodeIfPresent(String.self, forKey: .eventsUrl)
        fork = try values.decodeIfPresent(Bool.self, forKey: .fork)
        forksCount = try values.decodeIfPresent(Int.self, forKey: .forksCount)
        forksUrl = try values.decodeIfPresent(String.self, forKey: .forksUrl)
        fullName = try values.decodeIfPresent(String.self, forKey: .fullName)
        gitCommitsUrl = try values.decodeIfPresent(String.self, forKey: .gitCommitsUrl)
        gitRefsUrl = try values.decodeIfPresent(String.self, forKey: .gitRefsUrl)
        gitTagsUrl = try values.decodeIfPresent(String.self, forKey: .gitTagsUrl)
        gitUrl = try values.decodeIfPresent(String.self, forKey: .gitUrl)
        hasDownloads = try values.decodeIfPresent(Bool.self, forKey: .hasDownloads)
        hasIssues = try values.decodeIfPresent(Bool.self, forKey: .hasIssues)
        hasPages = try values.decodeIfPresent(Bool.self, forKey: .hasPages)
        hasWiki = try values.decodeIfPresent(Bool.self, forKey: .hasWiki)
        homepage = try values.decodeIfPresent(String.self, forKey: .homepage)
        hooksUrl = try values.decodeIfPresent(String.self, forKey: .hooksUrl)
        htmlUrl = try values.decodeIfPresent(String.self, forKey: .htmlUrl)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        issueCommentUrl = try values.decodeIfPresent(String.self, forKey: .issueCommentUrl)
        issueEventsUrl = try values.decodeIfPresent(String.self, forKey: .issueEventsUrl)
        issuesUrl = try values.decodeIfPresent(String.self, forKey: .issuesUrl)
        keysUrl = try values.decodeIfPresent(String.self, forKey: .keysUrl)
        labelsUrl = try values.decodeIfPresent(String.self, forKey: .labelsUrl)
        language = try values.decodeIfPresent(String.self, forKey: .language)
        languagesUrl = try values.decodeIfPresent(String.self, forKey: .languagesUrl)
        mergesUrl = try values.decodeIfPresent(String.self, forKey: .mergesUrl)
        milestonesUrl = try values.decodeIfPresent(String.self, forKey: .milestonesUrl)
        mirrorUrl = try values.decodeIfPresent(String.self, forKey: .mirrorUrl)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        networkCount = try values.decodeIfPresent(Int.self, forKey: .networkCount)
        notificationsUrl = try values.decodeIfPresent(String.self, forKey: .notificationsUrl)
        openIssuesCount = try values.decodeIfPresent(Int.self, forKey: .openIssuesCount)
        owner = try values.decodeIfPresent(RepositoryOrganization.self, forKey: .owner)
        permissions = try values.decodeIfPresent(RepositoryPermission.self, forKey: .permissions)
        privateField = try values.decodeIfPresent(Bool.self, forKey: .privateField)
        pullsUrl = try values.decodeIfPresent(String.self, forKey: .pullsUrl)
        pushedAt = try values.decodeIfPresent(String.self, forKey: .pushedAt)
        releasesUrl = try values.decodeIfPresent(String.self, forKey: .releasesUrl)
        size = try values.decodeIfPresent(Int.self, forKey: .size)
        sshUrl = try values.decodeIfPresent(String.self, forKey: .sshUrl)
        stargazersCount = try values.decodeIfPresent(Int.self, forKey: .stargazersCount)
        stargazersUrl = try values.decodeIfPresent(String.self, forKey: .stargazersUrl)
        statusesUrl = try values.decodeIfPresent(String.self, forKey: .statusesUrl)
        subscribersCount = try values.decodeIfPresent(Int.self, forKey: .subscribersCount)
        subscribersUrl = try values.decodeIfPresent(String.self, forKey: .subscribersUrl)
        subscriptionUrl = try values.decodeIfPresent(String.self, forKey: .subscriptionUrl)
        svnUrl = try values.decodeIfPresent(String.self, forKey: .svnUrl)
        tagsUrl = try values.decodeIfPresent(String.self, forKey: .tagsUrl)
        teamsUrl = try values.decodeIfPresent(String.self, forKey: .teamsUrl)
        topics = try values.decodeIfPresent([String].self, forKey: .topics)
        treesUrl = try values.decodeIfPresent(String.self, forKey: .treesUrl)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        watchersCount = try values.decodeIfPresent(Int.self, forKey: .watchersCount)
    }
}


struct RepositoryPermission : Codable {
    public let admin : Bool?
    public let pull : Bool?
    public let push : Bool?

    enum CodingKeys: String, CodingKey {
        case admin
        case pull
        case push
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        admin = try values.decodeIfPresent(Bool.self, forKey: .admin)
        pull = try values.decodeIfPresent(Bool.self, forKey: .pull)
        push = try values.decodeIfPresent(Bool.self, forKey: .push)
    }
}