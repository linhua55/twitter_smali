.class public Lcom/twitter/android/util/n;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static final a()I
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "confirm_email_prompt_id"

    const/16 v1, 0xa75

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final a(Lcom/twitter/model/timeline/w;)Z
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/twitter/model/timeline/w;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/twitter/android/util/n;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
