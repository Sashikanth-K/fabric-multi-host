echo "========== Instantiating chaincode v$1 =========="
peer chaincode instantiate -o orderer.example.com:7050 --tls $CORE_PEER_TLS_ENABLED --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem -C $CHANNEL_NAME -n $CC_NAME -c '{"Args": ["init","a", "100", "b","200"]}' -v 1.0 -P "OR ('Org1MSP.member','Org2MSP.member')"

