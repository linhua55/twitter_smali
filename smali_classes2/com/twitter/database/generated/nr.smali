.class final Lcom/twitter/database/generated/nr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbid;


# instance fields
.field private final a:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    .line 46
    return-void
.end method


# virtual methods
.method public a(J)Lbid;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    return-object p0
.end method

.method public a(Lcpk;)Lbid;
    .locals 3

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "icon_image"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-object p0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "icon_image"

    sget-object v2, Lcpk;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lbid;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object p0
.end method

.method public a(Z)Lbid;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_featured"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 108
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbid;
    .locals 2

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "promoted_by"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-object p0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "promoted_by"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)Lbid;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_promoted"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 115
    return-object p0
.end method

.method public synthetic b(J)Lcom/twitter/database/model/v;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/twitter/database/generated/nr;->a(J)Lbid;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lbid;
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "category_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    return-object p0
.end method

.method public d(J)Lbid;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "annotation_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    return-object p0
.end method

.method public e(J)Lbid;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "start_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    return-object p0
.end method

.method public f(J)Lbid;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/database/generated/nr;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "end_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    return-object p0
.end method
