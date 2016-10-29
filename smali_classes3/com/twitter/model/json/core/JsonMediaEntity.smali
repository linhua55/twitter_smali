.class public Lcom/twitter/model/json/core/JsonMediaEntity;
.super Lcom/twitter/model/json/common/e;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/e",
        "<",
        "Lcom/twitter/model/core/MediaEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "url_https"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "url"
        }
    .end annotation
.end field

.field public f:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public g:Lcom/twitter/model/core/MediaEntity$Type;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public j:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public k:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public l:Lcom/twitter/model/json/core/JsonMediaSizes;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public m:Lcom/twitter/model/json/core/JsonMediaFeatures;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public n:Lcom/twitter/model/core/ap;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public o:Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public p:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public q:Lcom/twitter/model/stratostore/k;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/aa;
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->l:Lcom/twitter/model/json/core/JsonMediaSizes;

    sget-object v1, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/j;->a(Lcom/twitter/model/json/common/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/math/Size;

    .line 63
    new-instance v1, Lcom/twitter/model/core/aa;

    invoke-direct {v1}, Lcom/twitter/model/core/aa;-><init>()V

    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 64
    invoke-virtual {v1, v2}, Lcom/twitter/model/core/aa;->a(I)Lcom/twitter/model/core/f;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/aa;

    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->a:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 65
    invoke-virtual {v1, v2}, Lcom/twitter/model/core/aa;->b(I)Lcom/twitter/model/core/f;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/aa;

    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->e:Ljava/lang/String;

    .line 66
    invoke-static {v2, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/model/core/aa;->e(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/aa;

    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Lcom/twitter/model/core/aa;->f(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/aa;

    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->d:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v2}, Lcom/twitter/model/core/aa;->g(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/aa;

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->f:J

    .line 69
    invoke-virtual {v1, v2, v3}, Lcom/twitter/model/core/aa;->a(J)Lcom/twitter/model/core/aa;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->j:J

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/twitter/model/core/aa;->b(J)Lcom/twitter/model/core/aa;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->k:J

    .line 71
    invoke-virtual {v1, v2, v3}, Lcom/twitter/model/core/aa;->c(J)Lcom/twitter/model/core/aa;

    move-result-object v2

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->i:Ljava/lang/String;

    .line 72
    invoke-static {v1, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/twitter/model/core/aa;->a(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    move-result-object v2

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->g:Lcom/twitter/model/core/MediaEntity$Type;

    sget-object v3, Lcom/twitter/model/core/MediaEntity$Type;->a:Lcom/twitter/model/core/MediaEntity$Type;

    .line 73
    invoke-static {v1, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/MediaEntity$Type;

    invoke-virtual {v2, v1}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/MediaEntity$Type;)Lcom/twitter/model/core/aa;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/core/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->n:Lcom/twitter/model/core/ap;

    .line 75
    invoke-virtual {v1, v2}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/ap;)Lcom/twitter/model/core/aa;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->m:Lcom/twitter/model/json/core/JsonMediaFeatures;

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->m:Lcom/twitter/model/json/core/JsonMediaFeatures;

    iget-object v2, v2, Lcom/twitter/model/json/core/JsonMediaFeatures;->a:Lcom/twitter/model/json/core/JsonMediaFeatures$SizeIndependent;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->m:Lcom/twitter/model/json/core/JsonMediaFeatures;

    iget-object v2, v2, Lcom/twitter/model/json/core/JsonMediaFeatures;->a:Lcom/twitter/model/json/core/JsonMediaFeatures$SizeIndependent;

    invoke-virtual {v2}, Lcom/twitter/model/json/core/JsonMediaFeatures$SizeIndependent;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/model/core/aa;->b(Ljava/util/List;)Lcom/twitter/model/core/aa;

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->m:Lcom/twitter/model/json/core/JsonMediaFeatures;

    iget-object v2, v2, Lcom/twitter/model/json/core/JsonMediaFeatures;->b:Lcom/twitter/model/json/core/JsonMediaFeatures$SizeDependent;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->m:Lcom/twitter/model/json/core/JsonMediaFeatures;

    iget-object v2, v2, Lcom/twitter/model/json/core/JsonMediaFeatures;->b:Lcom/twitter/model/json/core/JsonMediaFeatures$SizeDependent;

    invoke-virtual {v2, v0}, Lcom/twitter/model/json/core/JsonMediaFeatures$SizeDependent;->a(Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Ljava/util/List;)Lcom/twitter/model/core/aa;

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->o:Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->o:Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;

    iget-object v0, v0, Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;->a:Lcom/twitter/model/json/core/JsonMediaCallToActions;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->o:Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;

    iget-object v0, v0, Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;->a:Lcom/twitter/model/json/core/JsonMediaCallToActions;

    invoke-virtual {v0}, Lcom/twitter/model/json/core/JsonMediaCallToActions;->a()Lcom/twitter/model/av/VideoCta;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/av/VideoCta;)Lcom/twitter/model/core/aa;

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->o:Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;

    iget-object v0, v0, Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->b(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    .line 91
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->o:Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;

    iget-boolean v0, v0, Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;->c:Z

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Z)Lcom/twitter/model/core/aa;

    .line 92
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->o:Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;

    iget-object v0, v0, Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->c(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    .line 93
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->o:Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;

    iget-object v0, v0, Lcom/twitter/model/json/core/JsonAdditionalMediaInfo;->e:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/aa;

    .line 95
    :cond_3
    iget-boolean v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->p:Z

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->b(Z)Lcom/twitter/model/core/aa;

    .line 97
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->q:Lcom/twitter/model/stratostore/k;

    if-eqz v0, :cond_8

    .line 98
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->q:Lcom/twitter/model/stratostore/k;

    const-class v2, Lcom/twitter/model/stratostore/f;

    invoke-virtual {v0, v2}, Lcom/twitter/model/stratostore/k;->a(Ljava/lang/Class;)Lcom/twitter/model/stratostore/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/f;

    .line 99
    if-eqz v0, :cond_4

    .line 100
    iget-object v0, v0, Lcom/twitter/model/stratostore/f;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->c(Ljava/util/List;)Lcom/twitter/model/core/aa;

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->q:Lcom/twitter/model/stratostore/k;

    const-class v2, Lcom/twitter/model/stratostore/c;

    invoke-virtual {v0, v2}, Lcom/twitter/model/stratostore/k;->a(Ljava/lang/Class;)Lcom/twitter/model/stratostore/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/c;

    .line 104
    if-eqz v0, :cond_5

    .line 105
    iget-object v0, v0, Lcom/twitter/model/stratostore/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->d(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->q:Lcom/twitter/model/stratostore/k;

    const-class v2, Lcom/twitter/model/stratostore/d;

    invoke-virtual {v0, v2}, Lcom/twitter/model/stratostore/k;->a(Ljava/lang/Class;)Lcom/twitter/model/stratostore/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/d;

    .line 109
    if-eqz v0, :cond_6

    .line 110
    iget-object v0, v0, Lcom/twitter/model/stratostore/d;->a:Lcom/twitter/model/core/ag;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/ag;)Lcom/twitter/model/core/aa;

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->q:Lcom/twitter/model/stratostore/k;

    const-class v2, Lcom/twitter/model/stratostore/e;

    invoke-virtual {v0, v2}, Lcom/twitter/model/stratostore/k;->a(Ljava/lang/Class;)Lcom/twitter/model/stratostore/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/e;

    .line 114
    if-eqz v0, :cond_7

    .line 115
    iget-object v0, v0, Lcom/twitter/model/stratostore/e;->a:Lcom/twitter/model/core/aj;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/aj;)Lcom/twitter/model/core/aa;

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonMediaEntity;->q:Lcom/twitter/model/stratostore/k;

    const-class v2, Lcom/twitter/model/stratostore/a;

    invoke-virtual {v0, v2}, Lcom/twitter/model/stratostore/k;->a(Ljava/lang/Class;)Lcom/twitter/model/stratostore/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/a;

    .line 119
    if-eqz v0, :cond_8

    .line 120
    iget-object v0, v0, Lcom/twitter/model/stratostore/a;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->d(Ljava/util/List;)Lcom/twitter/model/core/aa;

    .line 124
    :cond_8
    return-object v1
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/twitter/model/json/core/JsonMediaEntity;->a()Lcom/twitter/model/core/aa;

    move-result-object v0

    return-object v0
.end method
