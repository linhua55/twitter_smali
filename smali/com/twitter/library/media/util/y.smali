.class public Lcom/twitter/library/media/util/y;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    const-string/jumbo v1, "extended_image_import_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.category.OPENABLE"

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.dir/image"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 78
    const-string/jumbo v1, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/media/util/y;->a(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 79
    return-void
.end method

.method public static a(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p4, p5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 90
    invoke-static {p2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 91
    invoke-virtual {p0}, Lcom/twitter/model/media/EditableImage;->h()Lcom/twitter/model/media/MediaSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/model/media/MediaSource;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "image_attachment"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "done"

    aput-object v3, v1, v2

    .line 90
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 93
    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "twitter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 97
    :cond_0
    iget-boolean v1, p0, Lcom/twitter/model/media/EditableImage;->b:Z

    if-eqz v1, :cond_1

    .line 98
    const-string/jumbo v1, "twitter:enhanced"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 101
    :cond_1
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 102
    return-void
.end method

.method public static a(Landroid/app/Activity;I)Z
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/library/media/util/z;

    invoke-direct {v0, p0}, Lcom/twitter/library/media/util/z;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/twitter/library/media/util/y;->a(Landroid/content/Context;Lcom/twitter/library/media/util/a;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/media/util/a;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Lcom/twitter/library/media/util/y;->a()Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-interface {p1, v0, p2, p3}, Lcom/twitter/library/media/util/a;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    sget v0, Lbkb;->unsupported_feature:I

    invoke-static {p0, v0}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;I)V

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method
