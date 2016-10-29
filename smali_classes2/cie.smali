.class public Lcie;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Lcom/twitter/model/timeline/bu;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/twitter/model/timeline/bw;

    invoke-direct {v0}, Lcom/twitter/model/timeline/bw;-><init>()V

    .line 17
    invoke-static {}, Lcie;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->b(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/twitter/model/timeline/bw;->a()Lcom/twitter/model/timeline/bu;

    move-result-object v0

    .line 16
    return-object v0
.end method

.method private static b()Z
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "business_profiles_featured_tab_recap_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
