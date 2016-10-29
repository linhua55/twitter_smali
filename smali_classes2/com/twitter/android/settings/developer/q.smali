.class public Lcom/twitter/android/settings/developer/q;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 6

    .prologue
    .line 24
    invoke-static {p0}, Lcom/twitter/android/settings/developer/q;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/twitter/android/settings/developer/n;->b(Landroid/content/Context;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/settings/developer/p;

    .line 31
    iget-object v4, v0, Lcom/twitter/android/settings/developer/p;->c:Ljava/util/List;

    .line 32
    iget-object v5, v0, Lcom/twitter/android/settings/developer/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v0, v0, Lcom/twitter/android/settings/developer/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    if-eqz v4, :cond_1

    .line 36
    const-string/jumbo v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v0, ", "

    invoke-static {v0, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_1
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ldbt;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-object v0, v1

    .line 43
    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/settings/developer/q;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v1, "[twitter-android FS export]"

    const/16 v2, 0x1770

    invoke-static {p0, v0, v1, v2}, Lczh;->a(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lcom/twitter/android/settings/developer/q;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 49
    invoke-static {v0}, Ldbt;->d(Ljava/io/File;)V

    .line 50
    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 65
    invoke-static {p0}, Ldbt;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "feature_switches_export.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method
