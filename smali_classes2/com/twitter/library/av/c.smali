.class public Lcom/twitter/library/av/c;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/twitter/model/av/AVMediaPlaylist;

.field public final e:Lcom/twitter/model/av/AVMedia;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/Boolean;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Long;

.field public final n:Lbxa;

.field public final o:Ljava/lang/Long;

.field public final p:Landroid/os/Bundle;

.field public final q:Ljava/lang/Long;

.field public final r:Ljava/lang/String;

.field public final s:Lbvn;


# direct methods
.method private constructor <init>(Lcom/twitter/library/av/e;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iget-object v0, p1, Lcom/twitter/library/av/e;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/twitter/library/av/c;->a:Landroid/content/Context;

    .line 79
    iget-object v0, p1, Lcom/twitter/library/av/e;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/library/av/c;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 80
    iget-object v0, p1, Lcom/twitter/library/av/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/av/c;->c:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/twitter/library/av/e;->d:Lcom/twitter/model/av/AVMediaPlaylist;

    iput-object v0, p0, Lcom/twitter/library/av/c;->d:Lcom/twitter/model/av/AVMediaPlaylist;

    .line 82
    iget-object v0, p1, Lcom/twitter/library/av/e;->e:Lcom/twitter/model/av/AVMedia;

    iput-object v0, p0, Lcom/twitter/library/av/c;->e:Lcom/twitter/model/av/AVMedia;

    .line 83
    iget-object v0, p1, Lcom/twitter/library/av/e;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/twitter/library/av/c;->f:Ljava/util/Map;

    .line 84
    iget v0, p1, Lcom/twitter/library/av/e;->g:I

    iput v0, p0, Lcom/twitter/library/av/c;->g:I

    .line 85
    iget-boolean v0, p1, Lcom/twitter/library/av/e;->h:Z

    iput-boolean v0, p0, Lcom/twitter/library/av/c;->h:Z

    .line 86
    iget v0, p1, Lcom/twitter/library/av/e;->i:I

    iput v0, p0, Lcom/twitter/library/av/c;->i:I

    .line 87
    iget-object v0, p1, Lcom/twitter/library/av/e;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/av/c;->j:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/twitter/library/av/e;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/twitter/library/av/c;->k:Ljava/lang/Boolean;

    .line 89
    iget-object v0, p1, Lcom/twitter/library/av/e;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/av/c;->l:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/twitter/library/av/e;->m:Ljava/lang/Long;

    iput-object v0, p0, Lcom/twitter/library/av/c;->m:Ljava/lang/Long;

    .line 91
    iget-object v0, p1, Lcom/twitter/library/av/e;->n:Lbxa;

    iput-object v0, p0, Lcom/twitter/library/av/c;->n:Lbxa;

    .line 92
    iget-object v0, p1, Lcom/twitter/library/av/e;->o:Ljava/lang/Long;

    iput-object v0, p0, Lcom/twitter/library/av/c;->o:Ljava/lang/Long;

    .line 93
    iget-object v0, p1, Lcom/twitter/library/av/e;->p:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/twitter/library/av/c;->p:Landroid/os/Bundle;

    .line 94
    iget-object v0, p1, Lcom/twitter/library/av/e;->q:Ljava/lang/Long;

    iput-object v0, p0, Lcom/twitter/library/av/c;->q:Ljava/lang/Long;

    .line 95
    iget-object v0, p1, Lcom/twitter/library/av/e;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/av/c;->r:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/twitter/library/av/e;->s:Lbvn;

    iput-object v0, p0, Lcom/twitter/library/av/c;->s:Lbvn;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/av/e;Lcom/twitter/library/av/d;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/twitter/library/av/c;-><init>(Lcom/twitter/library/av/e;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 105
    goto :goto_0

    .line 108
    :cond_3
    check-cast p1, Lcom/twitter/library/av/c;

    .line 110
    iget v2, p0, Lcom/twitter/library/av/c;->g:I

    iget v3, p1, Lcom/twitter/library/av/c;->g:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/twitter/library/av/c;->h:Z

    iget-boolean v3, p1, Lcom/twitter/library/av/c;->h:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->n:Lbxa;

    iget-object v3, p1, Lcom/twitter/library/av/c;->n:Lbxa;

    .line 112
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/twitter/library/av/c;->i:I

    iget v3, p1, Lcom/twitter/library/av/c;->i:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/twitter/library/av/c;->a:Landroid/content/Context;

    .line 114
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v3, p1, Lcom/twitter/library/av/c;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 115
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/library/av/c;->c:Ljava/lang/String;

    .line 116
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->d:Lcom/twitter/model/av/AVMediaPlaylist;

    iget-object v3, p1, Lcom/twitter/library/av/c;->d:Lcom/twitter/model/av/AVMediaPlaylist;

    .line 117
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->e:Lcom/twitter/model/av/AVMedia;

    iget-object v3, p1, Lcom/twitter/library/av/c;->e:Lcom/twitter/model/av/AVMedia;

    .line 118
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->f:Ljava/util/Map;

    iget-object v3, p1, Lcom/twitter/library/av/c;->f:Ljava/util/Map;

    .line 119
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/library/av/c;->j:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->k:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/twitter/library/av/c;->k:Ljava/lang/Boolean;

    .line 121
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/library/av/c;->l:Ljava/lang/String;

    .line 122
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->m:Ljava/lang/Long;

    iget-object v3, p1, Lcom/twitter/library/av/c;->m:Ljava/lang/Long;

    .line 123
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->o:Ljava/lang/Long;

    iget-object v3, p1, Lcom/twitter/library/av/c;->o:Ljava/lang/Long;

    .line 124
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->q:Ljava/lang/Long;

    iget-object v3, p1, Lcom/twitter/library/av/c;->q:Ljava/lang/Long;

    .line 125
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->p:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/twitter/library/av/c;->p:Landroid/os/Bundle;

    .line 126
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/library/av/c;->r:Ljava/lang/String;

    .line 127
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/c;->s:Lbvn;

    iget-object v3, p1, Lcom/twitter/library/av/c;->s:Lbvn;

    .line 128
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 133
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/library/av/c;->a:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twitter/library/av/c;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/twitter/library/av/c;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/twitter/library/av/c;->d:Lcom/twitter/model/av/AVMediaPlaylist;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/twitter/library/av/c;->e:Lcom/twitter/model/av/AVMedia;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/twitter/library/av/c;->f:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/twitter/library/av/c;->g:I

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/twitter/library/av/c;->h:Z

    .line 140
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/twitter/library/av/c;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/twitter/library/av/c;->k:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/twitter/library/av/c;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/twitter/library/av/c;->m:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/twitter/library/av/c;->n:Lbxa;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/twitter/library/av/c;->o:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/twitter/library/av/c;->q:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/twitter/library/av/c;->p:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget v2, p0, Lcom/twitter/library/av/c;->i:I

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/twitter/library/av/c;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/twitter/library/av/c;->s:Lbvn;

    aput-object v2, v0, v1

    .line 133
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
