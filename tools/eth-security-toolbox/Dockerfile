FROM trailofbits/eth-security-toolbox

USER root

RUN mkdir -p /home/ethsec/logs

WORKDIR /home/ethsec

COPY . .

RUN chmod +x /home/ethsec/entrypoint.sh
RUN chmod +x /home/ethsec/run_slither.sh

USER ethsec

ENTRYPOINT ["/home/ethsec/entrypoint.sh"]