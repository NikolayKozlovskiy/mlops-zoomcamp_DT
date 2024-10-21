FROM public.ecr.aws/lambda/python:3.9

RUN pip install -U pip
RUN pip install pipenv

COPY [ "Pipfile", "Pipfile.lock", "./" ]

RUN pipenv install --system --deploy

# because for some reason deepdiff is not installed with pipenv
RUN pip install deepdiff

COPY [ "lambda_function.py", "model.py", "./" ]

# the CMD in the Dockerfile serves a similar purpose by directing the Lambda runtime to the correct function to run
CMD [ "lambda_function.lambda_handler" ]
