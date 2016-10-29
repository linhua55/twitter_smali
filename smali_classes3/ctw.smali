.class public Lctw;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lctv;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lctu;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Lctl;

.field f:Lctp;

.field g:Lctr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lctw;
    .locals 1

    .prologue
    .line 121
    iput-wide p1, p0, Lctw;->b:J

    .line 122
    return-object p0
.end method

.method public a(Lctl;)Lctw;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lctw;->e:Lctl;

    .line 140
    return-object p0
.end method

.method public a(Lctp;)Lctw;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lctw;->f:Lctp;

    .line 146
    return-object p0
.end method

.method public a(Lctr;)Lctw;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lctw;->g:Lctr;

    .line 152
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lctw;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lctw;->a:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public a(Ljava/util/List;)Lctw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lctu;",
            ">;)",
            "Lctw;"
        }
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lctw;->c:Ljava/util/List;

    .line 128
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lctw;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lctw;->d:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lctw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lctw;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lctw;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lctv;->a:Ljava/util/Set;

    iget-object v1, p0, Lctw;->d:Ljava/lang/String;

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lctw;->e()Lctv;

    move-result-object v0

    return-object v0
.end method

.method public e()Lctv;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lctv;

    invoke-direct {v0, p0}, Lctv;-><init>(Lctw;)V

    return-object v0
.end method
