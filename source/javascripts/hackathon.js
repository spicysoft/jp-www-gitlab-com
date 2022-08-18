/* global setupCountdown */

function setupHackathonCountdown() {
  var nextHackathonDate = new Date('August 2, 2022 12:00:00').getTime();

  setupCountdown(nextHackathonDate, 'nextHackathonCountdown');
}

(function() {
  setupHackathonCountdown();
})();

// Use the GitLab API to fetch the number of MRs submitted during the Hackathon
// It assumes there is a tracking issue that contains the list of MRs as
// related merge requests

// Hackathon tracker issue. Update the issue ID for each Hackathon
// E.g. on https://gitlab.com/gitlab-com/marketing/community-relations/contributor-program/hackathon/issues/18
// the issue ID is '18'
var hackathonIssueID = '67';
var gitlabProjectPath = 'gitlab-com/marketing/community-relations/contributor-program/hackathon';
var gitlabHost = 'https://gitlab.com';
var hackathonIssue = `${gitlabHost}/${gitlabProjectPath}/issues/${hackathonIssueID}`;
var apiHost = `${gitlabHost}/api/v4`;
var gitlabProjectID = encodeURIComponent(gitlabProjectPath);
var apiEndpoint = `/projects/${gitlabProjectID}/issues/${hackathonIssueID}/related_merge_requests`;
var apiURL = apiHost + apiEndpoint;

fetch(apiURL)
  .then(function(response) {
    var totalRelatedMRs = response.headers.get('X-Total');
    var boxMessage = `<a href="${hackathonIssue}">${totalRelatedMRs} MRs submitted!</a>`
    document.getElementById('hackathonMRCount').innerHTML = boxMessage;
  })
  .catch(error => console.error('Error:', error));
