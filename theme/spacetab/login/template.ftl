<#macro registrationLayout displayMessage=false >
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spacetab</title>
    <link rel="stylesheet" type="text/css" href="${url.resourcesPath}/output.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <style>
        /* http://meyerweb.com/eric/tools/css/reset/
    v5.0.1 | 20191019
    License: none (public domain)
 */
        @import url("https://fonts.googleapis.com/css?family=Roboto&display=swap");
        html, body, div, span, applet, object, iframe,
        h1, h2, h3, h4, h5, h6, p, blockquote, pre,
        a, abbr, acronym, address, big, cite, code,
        del, dfn, em, img, ins, kbd, q, s, samp,
        small, strike, strong, sub, sup, tt, var,
        b, u, i, center,
        dl, dt, dd, menu, ol, ul, li,
        fieldset, form, label, legend,
        table, caption, tbody, tfoot, thead, tr, th, td,
        article, aside, canvas, details, embed,
        figure, figcaption, footer, header, hgroup,
        main, menu, nav, output, ruby, section, summary,
        time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline; }

        /* HTML5 display-role reset for older browsers */
        article, aside, details, figcaption, figure,
        footer, header, hgroup, main, menu, nav, section {
            display: block; }

        /* HTML5 hidden-attribute fix for newer browsers */
        *[hidden] {
            display: none; }

        body {
            line-height: 1; }

        menu, ol, ul {
            list-style: none; }

        blockquote, q {
            quotes: none; }

        blockquote:before, blockquote:after,
        q:before, q:after {
            content: '';
            content: none; }

        table {
            border-collapse: collapse;
            border-spacing: 0; }

        * {
            box-sizing: border-box; }

        html {
            height: 100%;
            width: 100%; }

        .st-app {
            font-family: Roboto;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100%;
            width: 100%;
            background-image: linear-gradient(to top, #0b1844, #382c65); }
        .st-app__logo-wrap {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
            margin: 100px auto; }
        .st-app__box {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 496px;
            padding: 35px 0 60px;
            border-radius: 20px;
            background-color: #ebecf0; }
        .st-app__title {
            margin-bottom: 30px;
            font-size: 20px;
            color: #0b1844; }
        .st-app__input {
            display: flex;
            align-items: center;
            flex-shrink: 0;
            flex-grow: 0;
            width: 352px;
            height: 50px;
            color: #7e7e7e;
            margin-bottom: 20px;
            border-radius: 100px;
            box-shadow: inset 3px 3px 10px 0 rgba(166, 171, 189, 0.65), inset -3px -3px 10px 0 #ffffff;
            border: solid 1px rgba(255, 255, 255, 0.5);
            background-color: rgba(255, 255, 255, 0.3);
            overflow: hidden;
            padding: 0 13px 0 23px;
            transition: background-color 0.1s; }
        .st-app__input:hover {
            background-color: rgba(255, 255, 255, 0.4); }
        .st-app__input:hover .st-app__icon {
            color: #6080ff; }
        .st-app__input_error {
            border-color: #eb5757; }
        .st-app__input-control {
            height: 100%;
            width: 100%;
            flex-shrink: 1;
            -webkit-appearance: none;
            appearance: none;
            background: none;
            border: none;
            outline: none !important;
            font-size: 14px;
            box-shadow: inset 1px 13px 10px -11px rgba(166, 171, 189, 0.65), inset 0px 0px 151px 0 #f1f2f5; }
        .st-app__icon {
            height: 22px;
            width: 22px;
            color: #7e7e7e;
            transition: color 0.1s; }
        .st-app__icon_button {
            margin-left: 2px; }
        .st-app__icon_error {
            height: 18px;
            width: 18px;
            color: #eb5757;
            margin-right: 12px;
            cursor: pointer; }
        .st-app__button {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
            flex-grow: 0;
            width: 352px;
            height: 50px;
            border: none;
            border-radius: 100px;
            box-shadow: 5px 12px 35px 0 rgba(96, 128, 255, 0.8);
            background-image: linear-gradient(to right, #674cf2, #5f81ff);
            font-size: 14px;
            font-weight: 500;
            color: #ffffff;
            margin-top: 27px;
            text-transform: uppercase;
            cursor: pointer;
            transition: box-shadow 0.1s; }
        .st-app__button:hover {
            box-shadow: 3px 6px 15px 0 #6080ff; }
        .st-app__logo {
            width: 200px;
            height: 47px;
            background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNDciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAyMDAgNDciPgogICAgPGcgY2xpcC1wYXRoPSJ1cmwoI3ByZWZpeF9fY2xpcDApIj4KICAgICAgICA8cGF0aCBmaWxsPSIjZmZmIiBkPSJNMTY4LjYzNSAxMy4yMTVjLTEuMDI1LTEuNDI4LTIuMzc3LTIuNTktMy45NDMtMy4zOS0xLjU2NS0uNzk5LTMuMjk5LTEuMjEyLTUuMDU3LTEuMjA1LTMuMDY5IDAtNi4wMTEgMS4yMTktOC4xODEgMy4zODktMi4xNyAyLjE3LTMuMzg5IDUuMTEyLTMuMzg5IDguMTgxIDAgMy4wNjkgMS4yMTkgNi4wMTEgMy4zODkgOC4xODEgMi4xNyAyLjE3IDUuMTEyIDMuMzg5IDguMTgxIDMuMzg5IDEuNzU4LjAwNyAzLjQ5Mi0uNDA2IDUuMDU3LTEuMjA2IDEuNTY2LS43OTkgMi45MTgtMS45NjEgMy45NDMtMy4zODl2NC40aDIuNjdWOC44MTVoLTIuNjd2NC40em0wIDdjLjA2NCAxLjIyLS4xMiAyLjQ0LS41NDMgMy41ODctLjQyMyAxLjE0Ni0xLjA3NCAyLjE5NS0xLjkxNSAzLjA4MS0uODQxLjg4Ny0xLjg1NCAxLjU5My0yLjk3NiAyLjA3NS0xLjEyMy40ODItMi4zMzIuNzMxLTMuNTU0LjczMS0xLjIyMSAwLTIuNDMtLjI0OS0zLjU1My0uNzMxLTEuMTIzLS40ODItMi4xMzUtMS4xODgtMi45NzYtMi4wNzUtLjg0MS0uODg2LTEuNDkzLTEuOTM1LTEuOTE1LTMuMDgxLS40MjMtMS4xNDYtLjYwNy0yLjM2Ny0uNTQzLTMuNTg3LS4wNjQtMS4yMi4xMi0yLjQ0LjU0My0zLjU4Ny40MjItMS4xNDYgMS4wNzQtMi4xOTUgMS45MTUtMy4wODEuODQxLS44ODcgMS44NTMtMS41OTMgMi45NzYtMi4wNzUgMS4xMjMtLjQ4MiAyLjMzMi0uNzMxIDMuNTUzLS43MzEgMS4yMjIgMCAyLjQzMS4yNDkgMy41NTQuNzMxIDEuMTIyLjQ4MiAyLjEzNSAxLjE4OCAyLjk3NiAyLjA3NS44NDEuODg2IDEuNDkyIDEuOTM1IDEuOTE1IDMuMDgxLjQyMyAxLjE0Ni42MDcgMi4zNjcuNTQzIDMuNTg3ek05NC4yOSAxMS4wM2MxLjMwMi4wMzIgMi41ODIuMzQ5IDMuNzQ5LjkzIDEuMTY2LjU4IDIuMTkxIDEuNDEgMy4wMDEgMi40M2wuMTY1LjIwNSAyLjA2NS0xLjUtLjE4LS4yM2MtMS4wMzYtMS4zMTYtMi4zNTktMi4zOC0zLjg2Ny0zLjExLTEuNTA4LS43MjktMy4xNjMtMS4xMDUtNC44MzgtMS4xSDk0LjFjLTYuMjk1IDAtMTEuMjI1IDUuMDgtMTEuMjI1IDExLjU3czQuOTMgMTEuNTcgMTEuMjI1IDExLjU3aC4yODVjMS42NTIuMDAzIDMuMjg0LS4zNjUgNC43NzUtMS4wNzYgMS40OTEtLjcxMSAyLjgwMy0xLjc0OCAzLjg0LTMuMDM0bC4xNzUtLjIxNS0xLjk1NS0xLjYzNS0uMTc1LjIyNWMtLjgyIDEuMDQzLTEuODYzIDEuODg4LTMuMDUzIDIuNDc1LTEuMTkuNTg3LTIuNDk2LjktMy44MjIuOTE1LTQuODUtLjEwNS04Ljc5NS00LjIzNS04Ljc5NS05LjIxLS4wMjItMi4zOTguOTAxLTQuNzEgMi41Ny02LjQzMiAxLjY2OC0xLjcyNCAzLjk0Ny0yLjcyMiA2LjM0NS0yLjc3OHpNNzQuODcgMTMuMjY1Yy0xLjAyNS0xLjQyOC0yLjM3Ny0yLjU5LTMuOTQzLTMuMzktMS41NjUtLjc5OS0zLjMtMS4yMTItNS4wNTctMS4yMDUtMy4wNjkgMC02LjAxMiAxLjIxOS04LjE4MSAzLjM4OS0yLjE3IDIuMTctMy4zOSA1LjExMi0zLjM5IDguMTgxIDAgMy4wNjkgMS4yMiA2LjAxMSAzLjM5IDguMTgxIDIuMTcgMi4xNyA1LjExMiAzLjM4OSA4LjE4IDMuMzg5IDEuNzU5LjAwNyAzLjQ5My0uNDA2IDUuMDU4LTEuMjA2IDEuNTY2LS43OTkgMi45MTgtMS45NjEgMy45NDMtMy4zODl2NC4zOTVoMi42N1Y4Ljg2NWgtMi42N3Y0LjR6bTAgNi45NzVjLjA2NCAxLjIyLS4xMiAyLjQ0LS41NDMgMy41ODctLjQyMyAxLjE0Ni0xLjA3NCAyLjE5NS0xLjkxNSAzLjA4MS0uODQxLjg4Ny0xLjg1NCAxLjU5My0yLjk3NiAyLjA3NS0xLjEyMy40ODItMi4zMzIuNzMxLTMuNTU0LjczMXMtMi40My0uMjQ5LTMuNTUzLS43MzFjLTEuMTIzLS40ODItMi4xMzUtMS4xODgtMi45NzYtMi4wNzUtLjg0MS0uODg2LTEuNDkzLTEuOTM1LTEuOTE1LTMuMDgxLS40MjMtMS4xNDYtLjYwOC0yLjM2Ny0uNTQzLTMuNTg3IDAtMS4xODIuMjMzLTIuMzUyLjY4NS0zLjQ0NC40NTItMS4wOTIgMS4xMTUtMi4wODQgMS45NS0yLjkyLjgzNy0uODM2IDEuODI5LTEuNDk5IDIuOTItMS45NSAxLjA5My0uNDUzIDIuMjYzLS42ODYgMy40NDUtLjY4NnMyLjM1Mi4yMzMgMy40NDQuNjg1YzEuMDkyLjQ1MiAyLjA4NCAxLjExNSAyLjkyIDEuOTUxLjgzNS44MzYgMS40OTggMS44MjggMS45NSAyLjkyLjQ1MyAxLjA5Mi42ODYgMi4yNjIuNjg2IDMuNDQ0aC0uMDI1ek0zOS43ODUgOC40N2gtMmMtNC41NyAwLTExIDMuNS0xMSAxMS4zNjVWNDYuNTRoMi42N3YtMjYuNWMuMDQzLTEuNzcuNjA2LTMuNDg5IDEuNjItNC45NCAxLjAxNS0xLjQ1MiAyLjQzNS0yLjU3MiA0LjA4Mi0zLjIyIDEuNjQ4LS42NDggMy40NS0uNzk2IDUuMTgyLS40MjUgMS43MzIuMzcxIDMuMzE1IDEuMjQ1IDQuNTUyIDIuNTEyIDEuMjM4IDEuMjY2IDIuMDc0IDIuODcgMi40MDQgNC42MS4zMyAxLjc0LjE0IDMuNTM4LS41NDcgNS4xNy0uNjg4IDEuNjMyLTEuODQgMy4wMjUtMy4zMTYgNC4wMDUtMS40NzUuOTgtMy4yMDYgMS41MDMtNC45NzcgMS41MDNIMzIuNzh2Mi4zNGg1LjY3NWMyLjk0OS0uMDI4IDUuNzc3LTEuMTc1IDcuOTExLTMuMjEgMi4xMzUtMi4wMzQgMy40MTYtNC44MDQgMy41ODUtNy43NDguMTctMi45NDQtLjc4Ny01Ljg0Mi0yLjY3NC04LjEwOC0xLjg4OC0yLjI2NS00LjU2Ni0zLjcyOS03LjQ5Mi00LjA5NHYuMDM1ek0xMzYuMTIgMi41aC0yLjY3djIzLjM0YzAgLjE5IDAgLjM4NS4wMzUuNTg1LjIyMSAxLjQ3OC45NSAyLjgzMiAyLjA2MyAzLjgzIDEuMTEzLjk5NiAyLjUzOSAxLjU3MyA0LjAzMiAxLjYzIDEuNjc1IDAgNC4wNy0uNjg1IDUuMjItMS45NWwuMTM1LS4xNTUtMS4yLTIuMDMtLjI1NS4yOGMtLjQyMi40NC0uOTMuNzktMS40OTIgMS4wMjktLjU2My4yMzgtMS4xNjcuMzU5LTEuNzc4LjM1Ni0yLjI3NSAwLTQuMDM1LTEuNS00LjA5LTMuNXYtMTQuNzJoOC4xN3YtMi4zN2gtOC4xN1YyLjV6TTE5OS44MzUgMjAuNWMuMDA0LTMuMDU4LTEuMjA0LTUuOTkyLTMuMzYtOC4xNi0yLjE1NS0yLjE3LTUuMDgyLTMuMzk1LTguMTQtMy40MWgtNS42NnYyLjM0NWg1LjY3NWMyLjQxNS4wMjkgNC43MiAxLjAxNiA2LjQwOCAyLjc0NCAxLjY4OCAxLjcyOCAyLjYyIDQuMDU2IDIuNTkyIDYuNDcxLjA2NCAxLjIyLS4xMiAyLjQ0LS41NDMgMy41ODctLjQyMiAxLjE0Ni0xLjA3NCAyLjE5NS0xLjkxNSAzLjA4MS0uODQxLjg4Ny0xLjg1MyAxLjU5My0yLjk3NiAyLjA3NS0xLjEyMy40ODItMi4zMzIuNzMxLTMuNTUzLjczMS0xLjIyMiAwLTIuNDMxLS4yNDktMy41NTQtLjczMS0xLjEyMi0uNDgyLTIuMTM1LTEuMTg4LTIuOTc2LTIuMDc1LS44NDEtLjg4Ni0xLjQ5Mi0xLjkzNS0xLjkxNS0zLjA4MS0uNDIzLTEuMTQ2LS42MDctMi4zNjctLjU0My0zLjU4N1YwaC0yLjY3djIwLjcxYzAgNy44NCA2LjQzNSAxMS4zNjUgMTEgMTEuMzY1aDEuOTM1YzIuODE5LS4zNTQgNS40MTEtMS43MjYgNy4yODktMy44NTggMS44NzctMi4xMzEgMi45MTEtNC44NzYgMi45MDYtNy43MTd6TTIxLjg1IDIzLjI1YzAgNC42NC0zLjUzNSA4LjM2NS0xMS41NDUgOC4zNjUtNS4zOSAwLTguNTktMi4wMy0xMC4xLTMuMzdMMS45MyAyNi41YzEuMTggMSAzLjg2IDIuNjkgOC4yNzUgMi42OSA2LjQyIDAgOS4wNTUtMy4wNyA5LjA1NS01Ljg0NXMtMi42NDUtNS4wNjUtOC44LTYuMjI1QzYuMTEgMTYuMzA1IDAgMTQuNTggMCA4LjUgMCAyLjc2NSA1LjE4NS4xMzUgMTAuNSAwYzQuNjU1LS4xIDggLjk3IDEwLjA1IDIuMzk1bC0xLjgxIDEuODFjLTIuMTg5LTEuMTQ0LTQuNjI2LTEuNzMtNy4wOTUtMS43MDVDNSAyLjUgMi41OSA1Ljc4NSAyLjU5IDguNDI1YzAgMi42NCAyLjM1IDQuOTUgOSA2LjMzNSA2LjY1IDEuMzg1IDEwLjI2IDMuODUgMTAuMjYgOC40OXpNMTE3Ljc0NSA4LjczNUMxMTEgOC43MzUgMTA2LjM3IDE0IDEwNi4zNyAyMC4zMDVjMCA2LjMwNSA0LjcwNSAxMS41NyAxMS4zMSAxMS41NyAyLjc4LjAzOCA1LjQ3Ni0uOTUyIDcuNTctMi43OGwtMS42Ny0xLjk0Yy0xLjU5NyAxLjQ5Ny0zLjcwMSAyLjMzNC01Ljg5IDIuMzQ1LTQuMTkgMC04LjA0NS0zLjM3LTguNjktNy44ODVoMjBjLjA0OS0uNDM1LjA3Mi0uODcyLjA3LTEuMzEuMDM1LTYuMzA1LTQuNjktMTEuNTctMTEuMzI1LTExLjU3em0wIDIuMzZjNC42MSAwIDguMzc1IDMuNzM1IDguNzk1IDguMzVoLTE3LjU5NWMuMTYyLTIuMjM4IDEuMTU0LTQuMzM2IDIuNzgyLTUuODggMS42MjgtMS41NDUgMy43NzQtMi40MjYgNi4wMTgtMi40N3oiLz4KICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI3ByZWZpeF9fcGFpbnQwX3JhZGlhbCkiIGQ9Ik0xOTUuMzUgMzcuMjdoLTU3LjIxNWMtMi41NjggMC00LjY1IDIuMDgyLTQuNjUgNC42NSAwIDIuNTY4IDIuMDgyIDQuNjUgNC42NSA0LjY1aDU3LjIxNWMyLjU2OCAwIDQuNjUtMi4wODIgNC42NS00LjY1IDAtMi41NjgtMi4wODItNC42NS00LjY1LTQuNjV6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNwcmVmaXhfX3BhaW50MV9yYWRpYWwpIiBkPSJNNDMuNDIgNDYuNTdjMi41NjggMCA0LjY1LTIuMDgyIDQuNjUtNC42NSAwLTIuNTY4LTIuMDgyLTQuNjUtNC42NS00LjY1LTIuNTY4IDAtNC42NSAyLjA4Mi00LjY1IDQuNjUgMCAyLjU2OCAyLjA4MiA0LjY1IDQuNjUgNC42NXoiLz4KICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI3ByZWZpeF9fcGFpbnQyX3JhZGlhbCkiIGQ9Ik02Mi4zNjUgNDYuNTdjMi41NjggMCA0LjY1LTIuMDgyIDQuNjUtNC42NSAwLTIuNTY4LTIuMDgyLTQuNjUtNC42NS00LjY1LTIuNTY4IDAtNC42NSAyLjA4Mi00LjY1IDQuNjUgMCAyLjU2OCAyLjA4MiA0LjY1IDQuNjUgNC42NXoiLz4KICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI3ByZWZpeF9fcGFpbnQzX3JhZGlhbCkiIGQ9Ik04MS4zMDUgNDYuNTdjMi41NjggMCA0LjY1LTIuMDgyIDQuNjUtNC42NSAwLTIuNTY4LTIuMDgyLTQuNjUtNC42NS00LjY1LTIuNTY4IDAtNC42NSAyLjA4Mi00LjY1IDQuNjUgMCAyLjU2OCAyLjA4MiA0LjY1IDQuNjUgNC42NXoiLz4KICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI3ByZWZpeF9fcGFpbnQ0X3JhZGlhbCkiIGQ9Ik0xMDAuMjUgNDYuNTdjMi41NjggMCA0LjY1LTIuMDgyIDQuNjUtNC42NSAwLTIuNTY4LTIuMDgyLTQuNjUtNC42NS00LjY1LTIuNTY4IDAtNC42NSAyLjA4Mi00LjY1IDQuNjUgMCAyLjU2OCAyLjA4MiA0LjY1IDQuNjUgNC42NXoiLz4KICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI3ByZWZpeF9fcGFpbnQ1X3JhZGlhbCkiIGQ9Ik0xMTkuMTkgNDYuNTdjMi41NjggMCA0LjY1LTIuMDgyIDQuNjUtNC42NSAwLTIuNTY4LTIuMDgyLTQuNjUtNC42NS00LjY1LTIuNTY4IDAtNC42NSAyLjA4Mi00LjY1IDQuNjUgMCAyLjU2OCAyLjA4MiA0LjY1IDQuNjUgNC42NXoiLz4KICAgICAgICA8cGF0aCBmaWxsPSIjZmZmIiBkPSJNMTk1LjA5NSAzOC42MmgtLjAwNWMtMS44MiAwLTMuMjk1IDEuNDc1LTMuMjk1IDMuMjk1di4wMDVjMCAxLjgyIDEuNDc1IDMuMjk1IDMuMjk1IDMuMjk1aC4wMDVjMS44MiAwIDMuMjk1LTEuNDc1IDMuMjk1LTMuMjk1di0uMDA1YzAtMS44Mi0xLjQ3NS0zLjI5NS0zLjI5NS0zLjI5NXoiLz4KICAgIDwvZz4KICAgIDxkZWZzPgogICAgICAgIDxyYWRpYWxHcmFkaWVudCBpZD0icHJlZml4X19wYWludDBfcmFkaWFsIiBjeD0iMCIgY3k9IjAiIHI9IjEiIGdyYWRpZW50VHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTk0LjIxNSAxMTguNzI1KSBzY2FsZSgyNjMuNjMpIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjEyIiBzdG9wLWNvbG9yPSIjNTZDNUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjE3IiBzdG9wLWNvbG9yPSIjNTdCRUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjIzIiBzdG9wLWNvbG9yPSIjNTlBQ0ZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjMiIHN0b3AtY29sb3I9IiM1RDhFRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMzIiIHN0b3AtY29sb3I9IiM1RTg1RkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuNCIgc3RvcC1jb2xvcj0iIzYwN0NGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii41MiIgc3RvcC1jb2xvcj0iIzY0NjNGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii41NCIgc3RvcC1jb2xvcj0iIzY1NUVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii42IiBzdG9wLWNvbG9yPSIjNjY1M0Y3Ii8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjgyIiBzdG9wLWNvbG9yPSIjNjkzMkRFIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjkzIiBzdG9wLWNvbG9yPSIjNkEyNUQ0Ii8+CiAgICAgICAgPC9yYWRpYWxHcmFkaWVudD4KICAgICAgICA8cmFkaWFsR3JhZGllbnQgaWQ9InByZWZpeF9fcGFpbnQxX3JhZGlhbCIgY3g9IjAiIGN5PSIwIiByPSIxIiBncmFkaWVudFRyYW5zZm9ybT0idHJhbnNsYXRlKDE5NC4yMTUgMTE4LjcyNSkgc2NhbGUoMjYzLjYzKSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4xMiIgc3RvcC1jb2xvcj0iIzU2QzVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4xNyIgc3RvcC1jb2xvcj0iIzU3QkVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4yMyIgc3RvcC1jb2xvcj0iIzU5QUNGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4zIiBzdG9wLWNvbG9yPSIjNUQ4RUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjMyIiBzdG9wLWNvbG9yPSIjNUU4NUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjQiIHN0b3AtY29sb3I9IiM2MDdDRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuNTIiIHN0b3AtY29sb3I9IiM2NDYzRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuNTQiIHN0b3AtY29sb3I9IiM2NTVFRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuNiIgc3RvcC1jb2xvcj0iIzY2NTNGNyIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii44MiIgc3RvcC1jb2xvcj0iIzY5MzJERSIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii45MyIgc3RvcC1jb2xvcj0iIzZBMjVENCIvPgogICAgICAgIDwvcmFkaWFsR3JhZGllbnQ+CiAgICAgICAgPHJhZGlhbEdyYWRpZW50IGlkPSJwcmVmaXhfX3BhaW50Ml9yYWRpYWwiIGN4PSIwIiBjeT0iMCIgcj0iMSIgZ3JhZGllbnRUcmFuc2Zvcm09InRyYW5zbGF0ZSgxOTQuMjE1IDExOC43MjUpIHNjYWxlKDI2My42MykiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIj4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMTIiIHN0b3AtY29sb3I9IiM1NkM1RkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMTciIHN0b3AtY29sb3I9IiM1N0JFRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMjMiIHN0b3AtY29sb3I9IiM1OUFDRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMyIgc3RvcC1jb2xvcj0iIzVEOEVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4zMiIgc3RvcC1jb2xvcj0iIzVFODVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii40IiBzdG9wLWNvbG9yPSIjNjA3Q0ZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjUyIiBzdG9wLWNvbG9yPSIjNjQ2M0ZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjU0IiBzdG9wLWNvbG9yPSIjNjU1RUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjYiIHN0b3AtY29sb3I9IiM2NjUzRjciLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuODIiIHN0b3AtY29sb3I9IiM2OTMyREUiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuOTMiIHN0b3AtY29sb3I9IiM2QTI1RDQiLz4KICAgICAgICA8L3JhZGlhbEdyYWRpZW50PgogICAgICAgIDxyYWRpYWxHcmFkaWVudCBpZD0icHJlZml4X19wYWludDNfcmFkaWFsIiBjeD0iMCIgY3k9IjAiIHI9IjEiIGdyYWRpZW50VHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTk0LjIxNSAxMTguNzI1KSBzY2FsZSgyNjMuNjMpIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjEyIiBzdG9wLWNvbG9yPSIjNTZDNUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjE3IiBzdG9wLWNvbG9yPSIjNTdCRUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjIzIiBzdG9wLWNvbG9yPSIjNTlBQ0ZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjMiIHN0b3AtY29sb3I9IiM1RDhFRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMzIiIHN0b3AtY29sb3I9IiM1RTg1RkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuNCIgc3RvcC1jb2xvcj0iIzYwN0NGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii41MiIgc3RvcC1jb2xvcj0iIzY0NjNGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii41NCIgc3RvcC1jb2xvcj0iIzY1NUVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii42IiBzdG9wLWNvbG9yPSIjNjY1M0Y3Ii8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjgyIiBzdG9wLWNvbG9yPSIjNjkzMkRFIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjkzIiBzdG9wLWNvbG9yPSIjNkEyNUQ0Ii8+CiAgICAgICAgPC9yYWRpYWxHcmFkaWVudD4KICAgICAgICA8cmFkaWFsR3JhZGllbnQgaWQ9InByZWZpeF9fcGFpbnQ0X3JhZGlhbCIgY3g9IjAiIGN5PSIwIiByPSIxIiBncmFkaWVudFRyYW5zZm9ybT0idHJhbnNsYXRlKDE5NC4yMTUgMTE4LjcyNSkgc2NhbGUoMjYzLjYzKSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4xMiIgc3RvcC1jb2xvcj0iIzU2QzVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4xNyIgc3RvcC1jb2xvcj0iIzU3QkVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4yMyIgc3RvcC1jb2xvcj0iIzU5QUNGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4zIiBzdG9wLWNvbG9yPSIjNUQ4RUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjMyIiBzdG9wLWNvbG9yPSIjNUU4NUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjQiIHN0b3AtY29sb3I9IiM2MDdDRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuNTIiIHN0b3AtY29sb3I9IiM2NDYzRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuNTQiIHN0b3AtY29sb3I9IiM2NTVFRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuNiIgc3RvcC1jb2xvcj0iIzY2NTNGNyIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii44MiIgc3RvcC1jb2xvcj0iIzY5MzJERSIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii45MyIgc3RvcC1jb2xvcj0iIzZBMjVENCIvPgogICAgICAgIDwvcmFkaWFsR3JhZGllbnQ+CiAgICAgICAgPHJhZGlhbEdyYWRpZW50IGlkPSJwcmVmaXhfX3BhaW50NV9yYWRpYWwiIGN4PSIwIiBjeT0iMCIgcj0iMSIgZ3JhZGllbnRUcmFuc2Zvcm09InRyYW5zbGF0ZSgxOTQuMjE1IDExOC43MjUpIHNjYWxlKDI2My42MykiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIj4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMTIiIHN0b3AtY29sb3I9IiM1NkM1RkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMTciIHN0b3AtY29sb3I9IiM1N0JFRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMjMiIHN0b3AtY29sb3I9IiM1OUFDRkYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuMyIgc3RvcC1jb2xvcj0iIzVEOEVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii4zMiIgc3RvcC1jb2xvcj0iIzVFODVGRiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9Ii40IiBzdG9wLWNvbG9yPSIjNjA3Q0ZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjUyIiBzdG9wLWNvbG9yPSIjNjQ2M0ZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjU0IiBzdG9wLWNvbG9yPSIjNjU1RUZGIi8+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iLjYiIHN0b3AtY29sb3I9IiM2NjUzRjciLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuODIiIHN0b3AtY29sb3I9IiM2OTMyREUiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIuOTMiIHN0b3AtY29sb3I9IiM2QTI1RDQiLz4KICAgICAgICA8L3JhZGlhbEdyYWRpZW50PgogICAgICAgIDxjbGlwUGF0aCBpZD0icHJlZml4X19jbGlwMCI+CiAgICAgICAgICAgIDxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik0wIDBIMjAwVjQ2LjU3SDB6Ii8+CiAgICAgICAgPC9jbGlwUGF0aD4KICAgIDwvZGVmcz4KPC9zdmc+Cg=="); }
        .st-app__error {
            font-size: 14px;
            color: #eb5757;
            width: 352px;
            height: 50px;
            border-radius: 100px;
            background-color: rgba(235, 87, 87, 0.1);
            display: flex;
            align-items: center;
            padding: 0 16px;
            margin-bottom: 20px;
            flex-shrink: 0;
            flex-grow: 0; }
        .st-app__form {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%; }
        .st-app__checkbox-dummy {
            width: 18px;
            height: 18px;
            border-radius: 2px;
            border: solid 1px #7e7e7e;
            background-color: #ffffff;
            margin-right: 10px; }
        .st-app__checkbox-control {
            visibility: hidden;
            position: absolute; }
        .st-app__checkbox-control:checked ~ .st-app__checkbox-dummy {
            background-color: #674cf2;
            background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNCIgaGVpZ2h0PSIxMCIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE0IDEwIj4KICAgIDxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik0xMy4yNjcgMEw0LjQ0OSA4LjU4Ny43MzMgNC45NjkgMCA1LjY4M2w0LjA4MiAzLjk3NS4zNjcuMzQyLjM2Ni0uMzQyTDE0IC43MTQgMTMuMjY3IDB6Ii8+Cjwvc3ZnPgo=");
            background-repeat: no-repeat;
            background-size: contain;
            background-position: center;
            border-color: #674cf2; }
        .st-app__checkbox {
            display: flex;
            align-items: center;
            font-size: 14px;
            color: #000000; }
        .st-app__checkbox:hover .st-app__checkbox-dummy {
            border-color: #674cf2; }
        .st-app__checkbox:hover .st-app__checkbox-control:checked ~ .st-app__checkbox-dummy {
            background-color: #5517d8;
            border-color: #5517d8; }
        .st-app__row {
            width: 352px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 13px 0 23px;
            margin-top: 7px; }
        .st-app__link {
            font-size: 14px;
            color: #674cf2;
            text-decoration: none; }
        .st-app__link:hover {
            color: #5517d8; }
        @media screen and (max-width: 540px) {
            .st-app {
                background-image: linear-gradient(to top, #0b1844, #382c65);
                justify-content: space-between; }
            .st-app__box {
                width: 100%;
                border-radius: 0;
                padding: 4vh 26px;
                flex-grow: 1; }
            .st-app__input {
                width: 100%;
                flex-shrink: 1;
                margin-bottom: 4vh; }
            .st-app__title {
                margin-bottom: 4vh; }
            .st-app__error {
                margin-bottom: 4vh; }
            .st-app__button {
                width: 100%;
                flex-shrink: 1;
                margin-top: 0px; }
            .st-app__error {
                width: 100%;
                flex-shrink: 1; }
            .st-app__logo-wrap {
                margin: 0;
                max-height: 250px;
                min-height: 160px;
                flex-grow: 1; }
            .st-app__row {
                width: 100%;
                padding: 0;
                margin: 0 0 4vh 0; } }
    </style>
</head>
<body class="st-app">
<div class="st-app__logo-wrap">
    <div class="st-app__logo"></div>
</div>
<div class="st-app__box">
    <h1 class="st-app__title">
        <#nested "header">
    </h1>
    <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
    <div class="st-app__error">
        <svg class="st-app__icon st-app__icon_error">
            <use xlink:href="#error" />
        </svg>
        ${message.summary!}
    </div>
    </#if>
    <#nested "form">
    <div class="st-app__copy-notify js-copy-modal">
        Code is copied to clipboard!
        <svg class="st-app__icon st-app__icon_notify js-close-copy">
            <use xlink:href="#close" />
        </svg>
    </div>
</div>
<svg style="display: none">
    <symbol id="login" width="22" height="22" fill="none" viewBox="0 0 22 22">
        <path fill="currentColor" d="M11 2.063c-4.928 0-8.938 4.009-8.938 8.937 0 4.928 4.01 8.938 8.938 8.938 4.928 0 8.938-4.01 8.938-8.938 0-4.928-4.01-8.938-8.938-8.938zm0 1.374c4.184 0 7.563 3.379 7.563 7.563 0 4.184-3.379 7.563-7.563 7.563-4.184 0-7.563-3.379-7.563-7.563 0-4.184 3.379-7.563 7.563-7.563zM11 5.5c-1.89 0-3.438 1.547-3.438 3.438 0 1.041.487 1.968 1.225 2.6-1.547.802-2.6 2.419-2.6 4.274h1.375c0-1.906 1.531-3.437 3.438-3.437 1.907 0 3.438 1.53 3.438 3.438h1.374c0-1.856-1.052-3.473-2.6-4.276.74-.631 1.226-1.558 1.226-2.6C14.438 7.048 12.89 5.5 11 5.5zm0 1.375c1.147 0 2.063.916 2.063 2.063C13.063 10.084 12.146 11 11 11c-1.147 0-2.063-.916-2.063-2.063 0-1.146.916-2.062 2.063-2.062z"/>
    </symbol>
    <symbol id="password" width="22" height="22" fill="none" viewBox="0 0 22 22">
        <path fill="currentColor" d="M13.75 2.063c-3.4 0-6.188 2.787-6.188 6.187 0 .357.06.671.108.988l-5.414 5.393-.193.215v5.091h4.812v-2.062h2.063v-2.063H11v-2.04c.811.397 1.756.665 2.75.665 3.4 0 6.188-2.787 6.188-6.187 0-3.4-2.788-6.188-6.188-6.188zm0 1.374c2.65 0 4.813 2.162 4.813 4.813 0 2.65-2.162 4.813-4.813 4.813-.832 0-1.69-.245-2.342-.602l-.172-.086H9.625v2.063H7.562V16.5H5.5v2.063H3.437v-3.137l5.436-5.457.258-.237-.065-.365c-.07-.413-.129-.781-.129-1.117 0-2.65 2.162-4.813 4.813-4.813zM15.125 5.5c-.76 0-1.375.615-1.375 1.375s.615 1.375 1.375 1.375S16.5 7.635 16.5 6.875 15.885 5.5 15.125 5.5z"/>
    </symbol>
    <symbol id="arrow" width="22" height="22" fill="none" viewBox="0 0 22 22">
        <path fill="#fff" d="M12.87 4.662l-.99.988 4.663 4.662H2.75v1.376h13.793l-4.662 4.662.988.988 5.844-5.844.473-.494-.473-.494-5.844-5.844z"/>
    </symbol>
    <symbol id="error" width="18" height="18" fill="none" viewBox="0 0 18 18">
        <path fill="#EB5757" d="M9 0c.826 0 1.623.107 2.39.32.768.215 1.484.518 2.15.91.665.393 1.271.863 1.819 1.411s1.018 1.154 1.41 1.82c.393.664.696 1.38.91 2.148C17.893 7.377 18 8.174 18 9c0 .826-.107 1.623-.32 2.39-.215.768-.518 1.484-.91 2.15-.393.665-.863 1.271-1.411 1.819s-1.154 1.018-1.82 1.41c-.665.393-1.38.696-2.148.91C10.623 17.893 9.826 18 9 18c-.826 0-1.623-.107-2.39-.32-.768-.215-1.485-.518-2.15-.91-.665-.393-1.271-.863-1.819-1.411s-1.018-1.154-1.41-1.82c-.393-.665-.696-1.38-.91-2.148C.107 10.623 0 9.826 0 9c0-.826.107-1.623.32-2.39.215-.768.518-1.485.91-2.15.393-.665.863-1.271 1.411-1.819s1.154-1.018 1.82-1.41C5.124.837 5.84.534 6.608.32 7.377.107 8.174 0 9 0zm0 16.875c.727 0 1.425-.094 2.096-.281.671-.188 1.298-.453 1.881-.796.583-.342 1.113-.753 1.59-1.23.478-.478.889-1.008 1.231-1.59.343-.584.608-1.21.796-1.882.187-.67.281-1.37.281-2.096 0-.727-.094-1.425-.281-2.096-.188-.671-.453-1.298-.796-1.881-.342-.583-.753-1.113-1.23-1.59-.478-.478-1.008-.889-1.59-1.231-.584-.343-1.21-.608-1.882-.796-.67-.187-1.37-.281-2.096-.281-.727 0-1.425.094-2.096.281-.671.188-1.298.453-1.881.796-.583.342-1.113.753-1.59 1.23-.478.478-.889 1.008-1.231 1.59-.343.584-.608 1.21-.796 1.882-.187.67-.281 1.37-.281 2.096 0 .727.094 1.425.281 2.096.188.671.453 1.298.796 1.881.342.583.753 1.113 1.23 1.59.478.478 1.008.889 1.59 1.231.584.343 1.21.608 1.882.796.67.187 1.37.281 2.096.281zm3.894-10.978L9.8 9l3.094 3.102-.792.792L9 9.8l-3.103 3.094-.79-.792L8.2 9 5.106 5.897l.791-.79L9 8.2l3.102-3.094.792.791z"/>
    </symbol>
</svg>
</body>
</html>
</#macro>
