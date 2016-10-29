.class public Lcom/twitter/android/client/chrome/a;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method protected static a(Landroid/app/Activity;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeItemsProvider;)Landroid/support/customtabs/CustomTabsIntent;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/client/am;->a(Landroid/content/Context;)Lcom/twitter/library/client/am;

    move-result-object v0

    .line 91
    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lcom/twitter/library/client/am;->a(Ljava/lang/String;)Z

    .line 94
    :cond_0
    invoke-virtual {v0, p1}, Lcom/twitter/library/client/am;->b(Ljava/lang/String;)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120013

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v0, v2}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 98
    invoke-static {}, Lcom/twitter/android/client/chrome/CustomTabsAction;->values()[Lcom/twitter/android/client/chrome/CustomTabsAction;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 99
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/twitter/android/client/chrome/ChromeCustomTabsActionReceiver;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v7, v5, Lcom/twitter/android/client/chrome/CustomTabsAction;->id:Ljava/lang/String;

    .line 100
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "scribe_items_provider"

    .line 101
    invoke-virtual {v6, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    .line 102
    const/high16 v7, 0x8000000

    .line 103
    invoke-static {p0, v1, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 104
    if-eqz v6, :cond_1

    .line 105
    invoke-virtual {v5, p0}, Lcom/twitter/android/client/chrome/CustomTabsAction;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/support/customtabs/CustomTabsIntent$Builder;->addMenuItem(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    const v0, 0x7f050055

    const v1, 0x7f050031

    invoke-virtual {v2, p0, v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setStartAnimations(Landroid/content/Context;II)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 111
    const v0, 0x7f05002f

    const v1, 0x7f050054

    invoke-virtual {v2, p0, v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setExitAnimations(Landroid/content/Context;II)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 113
    invoke-virtual {v2}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "link_fetch_3760"

    invoke-static {v1}, Lcom/twitter/config/c;->c(Ljava/lang/String;)Z

    move-result v1

    .line 44
    if-eqz p2, :cond_0

    .line 45
    invoke-interface {p2}, Lcom/twitter/library/client/BrowserDataSource;->e()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v4

    .line 46
    :goto_0
    if-eqz v1, :cond_2

    .line 48
    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/c;->g()Lcom/twitter/android/client/BrowserLoadingStatus;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/twitter/android/client/BrowserLoadingStatus;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0473

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 54
    const v7, 0x104000a

    new-instance v0, Lcom/twitter/android/client/chrome/b;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/chrome/b;-><init>(Lcom/twitter/android/client/BrowserLoadingStatus;Landroid/app/Activity;Ljava/lang/String;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/client/BrowserDataSource;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/twitter/android/client/chrome/c;

    invoke-direct {v1}, Lcom/twitter/android/client/chrome/c;-><init>()V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 81
    :goto_1
    return-void

    .line 45
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-direct {v1}, Lcom/twitter/android/client/BrowserLoadingStatus;-><init>()V

    .line 72
    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/c;->a(Lcom/twitter/android/client/BrowserLoadingStatus;)V

    .line 73
    invoke-static {p0, p1, v3, v4}, Lcom/twitter/android/client/chrome/a;->a(Landroid/app/Activity;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeItemsProvider;)Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2, p0}, Lcom/twitter/android/client/BrowserLoadingStatus;->a(Landroid/support/customtabs/CustomTabsIntent;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;Landroid/app/Activity;)V

    goto :goto_1

    .line 77
    :cond_2
    invoke-static {p0}, Lcom/twitter/library/client/am;->a(Landroid/content/Context;)Lcom/twitter/library/client/am;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, p1, v1, v4}, Lcom/twitter/android/client/chrome/a;->a(Landroid/app/Activity;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeItemsProvider;)Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/twitter/library/client/am;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/support/customtabs/CustomTabsIntent;Lcom/twitter/library/client/BrowserDataSource;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/twitter/library/client/am;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/twitter/library/client/am;->a(Landroid/content/Context;)Lcom/twitter/library/client/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/am;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
