FROM python:3.8

# Update and install system packages
RUN apt-get update -y && \
  apt-get install --no-install-recommends -y -q git libpq-dev python-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install DBT
RUN pip install -U pip
RUN pip install dbt==0.15.0rc2
RUN pip install termcolor==1.1.0

# Add the jinja repl
RUN mkdir /jinrepl
RUN git clone https://github.com/davehowell/jinrepl.git  /jinrepl
RUN echo 'alias jinrepl="python /jinrepl/jinrepl.py"' >> ~/.bashrc

# Set environment variables
ENV DBT_DIR /dbt

# Set working directory
WORKDIR $DBT_DIR

# Run dbt
CMD ["/bin/bash"]
