.class public Lbpc;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lbpd;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/twitter/model/core/cs;

.field public final k:Lcom/twitter/model/core/TwitterUser;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/twitter/model/core/cs;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILbpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/cs;Lcom/twitter/model/core/cs;Lcom/twitter/model/core/TwitterUser;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lbpd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            "Lcom/twitter/model/core/cs;",
            "Lcom/twitter/model/core/TwitterUser;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 100
    if-eqz p11, :cond_1

    .line 101
    const/4 p2, 0x4

    .line 118
    :cond_0
    :goto_0
    iput-object p1, p0, Lbpc;->a:Ljava/lang/String;

    .line 119
    iput p2, p0, Lbpc;->b:I

    .line 120
    if-eqz p3, :cond_8

    .line 121
    iput-object p3, p0, Lbpc;->c:Lbpd;

    .line 126
    :goto_1
    iput-object p4, p0, Lbpc;->d:Ljava/lang/String;

    .line 127
    iput-object p5, p0, Lbpc;->e:Ljava/lang/String;

    .line 130
    invoke-static {p6}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_2
    iput-object p6, p0, Lbpc;->f:Ljava/lang/String;

    .line 131
    iput-object p7, p0, Lbpc;->g:Ljava/lang/String;

    .line 132
    iput-object p8, p0, Lbpc;->h:Ljava/lang/String;

    .line 133
    iput-object p9, p0, Lbpc;->i:Ljava/lang/String;

    .line 134
    iput-object p10, p0, Lbpc;->j:Lcom/twitter/model/core/cs;

    .line 135
    move-object/from16 v0, p11

    iput-object v0, p0, Lbpc;->m:Lcom/twitter/model/core/cs;

    .line 136
    move-object/from16 v0, p12

    iput-object v0, p0, Lbpc;->k:Lcom/twitter/model/core/TwitterUser;

    .line 137
    move-object/from16 v0, p13

    iput-object v0, p0, Lbpc;->l:Ljava/util/List;

    .line 138
    return-void

    .line 102
    :cond_1
    iget-object v1, p10, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v1, v1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    sget-object v2, Lcom/twitter/model/core/MediaEntity$Type;->b:Lcom/twitter/model/core/MediaEntity$Type;

    invoke-virtual {v1, v2}, Lcom/twitter/model/core/ac;->a(Lcom/twitter/model/core/MediaEntity$Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    const/4 p2, 0x2

    goto :goto_0

    .line 104
    :cond_2
    iget-object v1, p10, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v1, v1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    sget-object v2, Lcom/twitter/model/core/MediaEntity$Type;->d:Lcom/twitter/model/core/MediaEntity$Type;

    invoke-virtual {v1, v2}, Lcom/twitter/model/core/ac;->a(Lcom/twitter/model/core/MediaEntity$Type;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p10, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v1, v1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    sget-object v2, Lcom/twitter/model/core/MediaEntity$Type;->c:Lcom/twitter/model/core/MediaEntity$Type;

    .line 105
    invoke-virtual {v1, v2}, Lcom/twitter/model/core/ac;->a(Lcom/twitter/model/core/MediaEntity$Type;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    :cond_3
    const/4 p2, 0x3

    goto :goto_0

    .line 107
    :cond_4
    iget-object v1, p10, Lcom/twitter/model/core/cs;->z:Lclw;

    if-eqz v1, :cond_7

    .line 108
    iget-object v1, p10, Lcom/twitter/model/core/cs;->z:Lclw;

    .line 109
    invoke-virtual {v1}, Lclw;->u()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lclw;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    :cond_5
    const/4 p2, 0x3

    goto :goto_0

    .line 111
    :cond_6
    invoke-virtual {v1}, Lclw;->r()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    const/4 p2, 0x2

    goto :goto_0

    .line 114
    :cond_7
    invoke-static {p7}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 p2, 0x5

    goto :goto_0

    .line 124
    :cond_8
    new-instance v1, Lbpd;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lbpd;-><init>(IILjava/util/List;)V

    iput-object v1, p0, Lbpc;->c:Lbpd;

    goto :goto_1

    :cond_9
    move-object p6, p4

    .line 130
    goto :goto_2
.end method
