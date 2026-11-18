${basereq} --action getIssueList \
           --jql "project = 'Moodle' \
                 AND status = 'Waiting for Merge Review' \
                 AND status WAS NOT 'Waiting for Merge Review' ON '-${schedulemins}' \
                 AND level IS EMPTY \
                 AND 'Automated test results' IS EMPTY \
                 ORDER BY priority DESC, votes DESC, 'Last comment date' ASC" \
           --outputFormat 101 \
           --file "${resultfile}"
