.class public final Lcom/twitter/model/livevideo/e;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/livevideo/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/twitter/model/livevideo/a;

.field i:Ljava/lang/String;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/card/property/ImageSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 123
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/livevideo/e;->j:Ljava/util/List;

    .line 122
    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/model/livevideo/e;
    .locals 1

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/twitter/model/livevideo/e;->a:J

    .line 128
    return-object p0
.end method

.method public a(Lcom/twitter/model/livevideo/a;)Lcom/twitter/model/livevideo/e;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/twitter/model/livevideo/e;->h:Lcom/twitter/model/livevideo/a;

    .line 170
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/twitter/model/livevideo/e;->g:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/livevideo/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/card/property/ImageSpec;",
            ">;)",
            "Lcom/twitter/model/livevideo/e;"
        }
    .end annotation

    .prologue
    .line 181
    iput-object p1, p0, Lcom/twitter/model/livevideo/e;->j:Ljava/util/List;

    .line 182
    return-object p0
.end method

.method public b(J)Lcom/twitter/model/livevideo/e;
    .locals 1

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/twitter/model/livevideo/e;->b:J

    .line 134
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/twitter/model/livevideo/e;->e:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public c(J)Lcom/twitter/model/livevideo/e;
    .locals 1

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/twitter/model/livevideo/e;->c:J

    .line 140
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/twitter/model/livevideo/e;->f:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/twitter/model/livevideo/e;->e()Lcom/twitter/model/livevideo/d;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/twitter/model/livevideo/e;
    .locals 1

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/twitter/model/livevideo/e;->d:J

    .line 146
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/twitter/model/livevideo/e;->i:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method protected e()Lcom/twitter/model/livevideo/d;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/twitter/model/livevideo/d;

    invoke-direct {v0, p0}, Lcom/twitter/model/livevideo/d;-><init>(Lcom/twitter/model/livevideo/e;)V

    return-object v0
.end method
