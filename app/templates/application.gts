import { pageTitle } from 'ember-page-title';
import HelloWorld from 'iarroyo-site/components/hello-world';

<template>
  {{pageTitle "Ismael Arroyo - UI/UX Manager"}}

  <HelloWorld />

  {{outlet}}
</template>
