.class public abstract Lcom/twitter/media/request/h;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/twitter/media/request/h;",
        "RESP:",
        "Lcom/twitter/media/request/ResourceResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final p:Ljava/lang/String;

.field public q:Ljava/lang/Object;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lcom/twitter/media/request/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/media/request/i",
            "<TRESP;>;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/Object;

.field public w:Lcom/twitter/media/request/ResourceRequestType;

.field public x:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/media/request/h;->s:Z

    .line 156
    sget-object v0, Lcom/twitter/media/request/ResourceRequestType;->a:Lcom/twitter/media/request/ResourceRequestType;

    iput-object v0, p0, Lcom/twitter/media/request/h;->w:Lcom/twitter/media/request/ResourceRequestType;

    .line 160
    invoke-static {p1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/media/request/h;->p:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/media/request/ResourceRequestType;)Lcom/twitter/media/request/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/ResourceRequestType;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/twitter/media/request/h;->w:Lcom/twitter/media/request/ResourceRequestType;

    .line 202
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/h;

    return-object v0
.end method

.method public a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/i",
            "<TRESP;>;)TB;"
        }
    .end annotation

    .prologue
    .line 189
    iput-object p1, p0, Lcom/twitter/media/request/h;->u:Lcom/twitter/media/request/i;

    .line 190
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/h;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/twitter/media/request/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 165
    iput-object p1, p0, Lcom/twitter/media/request/h;->q:Ljava/lang/Object;

    .line 166
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/h;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/media/request/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/twitter/media/request/h;->x:Ljava/lang/String;

    .line 208
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/h;

    return-object v0
.end method

.method public d(Z)Lcom/twitter/media/request/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/twitter/media/request/h;->r:Z

    .line 172
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/h;

    return-object v0
.end method

.method public e(Z)Lcom/twitter/media/request/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/twitter/media/request/h;->s:Z

    .line 178
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/h;

    return-object v0
.end method

.method public f(Z)Lcom/twitter/media/request/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/twitter/media/request/h;->t:Z

    .line 184
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/h;

    return-object v0
.end method
