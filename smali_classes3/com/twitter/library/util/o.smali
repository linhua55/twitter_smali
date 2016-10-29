.class public Lcom/twitter/library/util/o;
.super Lcom/twitter/library/util/a;
.source "Twttr"


# static fields
.field private static b:Z

.field private static c:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/twitter/library/util/a;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/twitter/library/util/a;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/util/Map;)Lcaj;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/twitter/library/util/a;->a(Ljava/util/Map;)Lcaj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/twitter/library/util/a;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/util/Map;Lcom/twitter/library/util/p;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/twitter/library/util/a;->a(Ljava/util/Map;Lcom/twitter/library/util/p;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/Map;Lcom/twitter/library/util/p;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/util/a;->a(Ljava/util/Map;Lcom/twitter/library/util/p;Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/Set;Lcom/twitter/library/util/p;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/twitter/library/util/a;->a(Ljava/util/Set;Lcom/twitter/library/util/p;)V

    return-void
.end method

.method public b()Z
    .locals 5

    .prologue
    .line 38
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 40
    sget-wide v2, Lcom/twitter/library/util/o;->c:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 41
    sget-boolean v0, Lcom/twitter/library/util/o;->b:Z

    .line 47
    :goto_0
    return v0

    .line 43
    :cond_0
    new-instance v2, Lcom/twitter/library/client/l;

    iget-object v3, p0, Lcom/twitter/library/util/o;->a:Landroid/content/Context;

    const-string/jumbo v4, "ContactLoaderHelper"

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 44
    const-string/jumbo v3, "contacts_uploaded"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/twitter/library/util/o;->b:Z

    .line 45
    sput-wide v0, Lcom/twitter/library/util/o;->c:J

    .line 47
    sget-boolean v0, Lcom/twitter/library/util/o;->b:Z

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 52
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 54
    new-instance v2, Lcom/twitter/library/client/l;

    iget-object v3, p0, Lcom/twitter/library/util/o;->a:Landroid/content/Context;

    const-string/jumbo v4, "ContactLoaderHelper"

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v3, "contacts_uploaded"

    invoke-virtual {v2, v3, v5}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/n;->commit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    sput-boolean v5, Lcom/twitter/library/util/o;->b:Z

    .line 57
    sput-wide v0, Lcom/twitter/library/util/o;->c:J

    .line 59
    :cond_0
    return-void
.end method
