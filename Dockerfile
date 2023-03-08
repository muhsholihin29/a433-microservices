#Use image named node and tag 14.21.3
FROM node:14.21.3
# New directory with named app inside container
WORKDIR /app
# Copy file from local working directory into container directory
COPY . .
# Strup environtment
ENV NODE_ENV=production DB_HOST=item-db
# Install dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build
# Expose port that will be used by container
EXPOSE 8080
# Execute "npm start" when container starts
CMD ["npm", "start"]