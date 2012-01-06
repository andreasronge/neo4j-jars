require 'java'
require 'neo4j-jars/core/geronimo-jta_1.1_spec-1.1.1.jar'
require 'neo4j-jars/core/lucene-core-3.1.0.jar'
require 'neo4j-jars/core/neo4j-cypher-1.6.M01.jar'
require 'neo4j-jars/core/neo4j-kernel-1.6.M01.jar'
require 'neo4j-jars/core/neo4j-lucene-index-1.6.M01.jar'
require 'neo4j-jars/core/neo4j-jmx-1.6.M01.jar'
require 'neo4j-jars/core/neo4j-udc-1.6.M01.jar'
require 'neo4j-jars/core/org.apache.servicemix.bundles.jline-0.9.94_1.jar'
require 'neo4j-jars/core/scala-library-2.9.0-1.jar'
require 'neo4j-jars/core/server-api-1.6.M01.jar'
require 'neo4j-jars/ha/neo4j-management-1.6.M01.jar'

require 'neo4j-jars/core/neo4j-graph-algo-1.6.M01.jar'
require 'neo4j-jars/core/neo4j-graph-matching-1.6.M01.jar'

module Neo4jJars

  def self.load_local_jars
    if Neo4j.config[:online_backup_enabled]
      Neo4j.load_online_backup
    end
  end

  def self.load_shell_jars
    require 'neo4j-jars/core/neo4j-shell-1.6.M01.jar'
  end

  def self.load_online_backup
    require 'neo4j-jars/ha/neo4j-com-1.6.M01.jar'
    require 'neo4j-jars/ha/neo4j-backup-1.6.M01.jar'
    require 'neo4j-jars/ha/org.apache.servicemix.bundles.netty-3.2.5.Final_1.jar'
    Neo4j.send(:const_set, :OnlineBackup, org.neo4j.backup.OnlineBackup)
  end

  def self.load_ha_jars
    require 'neo4j-jars/ha/neo4j-backup-1.6.M01.jar'
    require 'neo4j-jars/ha/neo4j-com-1.6.M01.jar'
    require 'neo4j-jars/ha/neo4j-ha-1.6.M01.jar'
    require 'neo4j-jars/ha/log4j-1.2.16.jar'
    require 'neo4j-jars/ha/org.apache.servicemix.bundles.netty-3.2.5.Final_1.jar'
    require 'neo4j-jars/ha/slf4j-api-1.6.1.jar'
    require 'neo4j-jars/ha/zookeeper-3.3.2.jar'
  end
end
