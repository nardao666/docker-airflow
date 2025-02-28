FROM apache/airflow:2.10.3

# ENV ORACLE_HOME=/opt/oracle

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc build-essential \
    libaio1 \
    unzip \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# RUN mkdir -p $ORACLE_HOME

# RUN wget https://download.oracle.com/otn_software/linux/instantclient/2370000/instantclient-basic-linux.x64-23.7.0.25.01.zip -O /tmp/instantclient_oracle.zip

# RUN unzip /tmp/instantclient_oracle.zip -d $ORACLE_HOME \
#     && rm -f /tmp/instantclient_oracle.zip
