.class public Lcom/twitter/library/api/dm/requests/s;
.super Lcom/twitter/library/api/dm/requests/SendDMRequest;
.source "Twttr"


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:Ljava/lang/String;

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/twitter/library/client/Session;

.field private final r:Lcom/twitter/model/dms/i;

.field private final s:Lcom/twitter/model/dms/cf;

.field private t:Lcom/twitter/model/drafts/DraftAttachment;

.field private final u:Z

.field private final v:Ljava/lang/String;

.field private w:Lcom/twitter/model/dms/bd;

.field private x:Lcom/twitter/library/service/aa;

.field private y:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/twitter/library/api/dm/requests/w;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->a(Lcom/twitter/library/api/dm/requests/w;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/twitter/library/api/dm/requests/s;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->b(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/library/api/dm/requests/SendDMRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 65
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->c(Lcom/twitter/library/api/dm/requests/w;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->i:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->d(Lcom/twitter/library/api/dm/requests/w;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->j:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->b(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/library/api/dm/requests/s;->k:J

    .line 68
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->e(Lcom/twitter/library/api/dm/requests/w;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->l:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->f(Lcom/twitter/library/api/dm/requests/w;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->m:Ljava/util/Set;

    .line 70
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->b(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->n:Lcom/twitter/library/client/Session;

    .line 71
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->g(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->t:Lcom/twitter/model/drafts/DraftAttachment;

    .line 72
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->h(Lcom/twitter/library/api/dm/requests/w;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/api/dm/requests/s;->u:Z

    .line 73
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->i(Lcom/twitter/library/api/dm/requests/w;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->v:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->t:Lcom/twitter/model/drafts/DraftAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->t:Lcom/twitter/model/drafts/DraftAttachment;

    const/4 v2, 0x3

    .line 76
    invoke-virtual {v0, v2}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 78
    :goto_0
    if-eqz v0, :cond_1

    .line 79
    iput-object v1, p0, Lcom/twitter/library/api/dm/requests/s;->s:Lcom/twitter/model/dms/cf;

    .line 80
    new-instance v1, Lcom/twitter/model/dms/bm;

    invoke-direct {v1}, Lcom/twitter/model/dms/bm;-><init>()V

    new-instance v2, Lcom/twitter/model/core/aa;

    invoke-direct {v2}, Lcom/twitter/model/core/aa;-><init>()V

    iget-object v3, v0, Lcom/twitter/model/media/EditableMedia;->k:Lcom/twitter/media/model/MediaFile;

    .line 82
    invoke-virtual {v3}, Lcom/twitter/media/model/MediaFile;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/model/core/aa;->a(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    move-result-object v2

    iget-object v3, v0, Lcom/twitter/model/media/EditableMedia;->k:Lcom/twitter/media/model/MediaFile;

    iget-object v3, v3, Lcom/twitter/media/model/MediaFile;->e:Lcom/twitter/util/math/Size;

    .line 83
    invoke-virtual {v3}, Lcom/twitter/util/math/Size;->a()I

    move-result v3

    iget-object v4, v0, Lcom/twitter/model/media/EditableMedia;->k:Lcom/twitter/media/model/MediaFile;

    iget-object v4, v4, Lcom/twitter/media/model/MediaFile;->e:Lcom/twitter/util/math/Size;

    .line 84
    invoke-virtual {v4}, Lcom/twitter/util/math/Size;->b()I

    move-result v4

    .line 83
    invoke-static {v3, v4}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/core/aa;

    move-result-object v2

    .line 85
    invoke-direct {p0, v0}, Lcom/twitter/library/api/dm/requests/s;->a(Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/model/core/MediaEntity$Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/MediaEntity$Type;)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/twitter/model/core/aa;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    .line 81
    invoke-virtual {v1, v0}, Lcom/twitter/model/dms/bm;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/model/dms/bm;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/twitter/model/dms/bm;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/i;

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->r:Lcom/twitter/model/dms/i;

    .line 98
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 76
    goto :goto_0

    .line 88
    :cond_1
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->j(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/model/core/ay;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Lcom/twitter/model/dms/ch;

    invoke-direct {v0}, Lcom/twitter/model/dms/ch;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->j(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/model/core/ay;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/core/ay;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/ch;->a(J)Lcom/twitter/model/dms/ch;

    move-result-object v0

    .line 91
    invoke-static {p1}, Lcom/twitter/library/api/dm/requests/w;->j(Lcom/twitter/library/api/dm/requests/w;)Lcom/twitter/model/core/ay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/ch;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/model/dms/ch;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/twitter/model/dms/ch;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cf;

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->s:Lcom/twitter/model/dms/cf;

    .line 93
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->s:Lcom/twitter/model/dms/cf;

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->r:Lcom/twitter/model/dms/i;

    goto :goto_1

    .line 95
    :cond_2
    iput-object v1, p0, Lcom/twitter/library/api/dm/requests/s;->s:Lcom/twitter/model/dms/cf;

    .line 96
    iput-object v1, p0, Lcom/twitter/library/api/dm/requests/s;->r:Lcom/twitter/model/dms/i;

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/twitter/library/api/dm/requests/w;Lcom/twitter/library/api/dm/requests/t;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/twitter/library/api/dm/requests/s;-><init>(Lcom/twitter/library/api/dm/requests/w;)V

    return-void
.end method

.method private a(Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/model/core/MediaEntity$Type;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/twitter/library/api/dm/requests/v;->a:[I

    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/media/model/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    sget-object v0, Lcom/twitter/model/core/MediaEntity$Type;->a:Lcom/twitter/model/core/MediaEntity$Type;

    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    sget-object v0, Lcom/twitter/model/core/MediaEntity$Type;->b:Lcom/twitter/model/core/MediaEntity$Type;

    goto :goto_0

    .line 232
    :pswitch_1
    sget-object v0, Lcom/twitter/model/core/MediaEntity$Type;->c:Lcom/twitter/model/core/MediaEntity$Type;

    goto :goto_0

    .line 236
    :pswitch_2
    sget-object v0, Lcom/twitter/model/core/MediaEntity$Type;->d:Lcom/twitter/model/core/MediaEntity$Type;

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/twitter/library/api/dm/requests/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/s;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/library/api/dm/requests/s;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/twitter/library/api/dm/requests/s;->s()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/s;->S()Lcom/twitter/library/provider/dm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twitter/library/provider/dm;->d(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_1

    .line 196
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 198
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_1
    return v0

    .line 198
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic b(Lcom/twitter/library/api/dm/requests/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->y:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/twitter/model/drafts/DraftAttachment;)V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/media/manager/k;

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/s;->p:Landroid/content/Context;

    iget-object v3, p1, Lcom/twitter/model/drafts/DraftAttachment;->f:Landroid/net/Uri;

    .line 148
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/twitter/media/model/MediaType;->c:Lcom/twitter/media/model/MediaType;

    invoke-direct {v1, v2, v3, v4}, Lcom/twitter/library/media/manager/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/media/model/MediaType;)V

    new-instance v2, Lcom/twitter/library/api/dm/requests/u;

    invoke-direct {v2, p0, p1}, Lcom/twitter/library/api/dm/requests/u;-><init>(Lcom/twitter/library/api/dm/requests/s;Lcom/twitter/model/drafts/DraftAttachment;)V

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->y:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 206
    new-instance v1, Lbns;

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/s;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/s;->n:Lcom/twitter/library/client/Session;

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->m:Ljava/util/Set;

    .line 207
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [J

    invoke-static {v0, v4}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v2, v3, p1, v0}, Lbns;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;[J)V

    invoke-virtual {v1}, Lbns;->b()V

    .line 208
    return-void
.end method

.method private s()V
    .locals 11

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->i:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/twitter/library/api/dm/requests/s;->k:J

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/s;->m:Ljava/util/Set;

    .line 119
    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbnx;->a(J[J)Ljava/lang/String;

    move-result-object v2

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/twitter/library/api/dm/requests/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    invoke-direct {p0, v2}, Lcom/twitter/library/api/dm/requests/s;->b(Ljava/lang/String;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->w:Lcom/twitter/model/dms/bd;

    if-nez v0, :cond_2

    .line 127
    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/s;->b:Lcom/twitter/library/provider/dm;

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/s;->j:Ljava/lang/String;

    iget-wide v4, p0, Lcom/twitter/library/api/dm/requests/s;->k:J

    iget-object v6, p0, Lcom/twitter/library/api/dm/requests/s;->l:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/library/api/dm/requests/s;->t:Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v8, p0, Lcom/twitter/library/api/dm/requests/s;->r:Lcom/twitter/model/dms/i;

    iget-object v9, p0, Lcom/twitter/library/api/dm/requests/s;->c:Lcom/twitter/library/provider/b;

    iget-object v10, p0, Lcom/twitter/library/api/dm/requests/s;->v:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/model/dms/i;Lcom/twitter/library/provider/b;Ljava/lang/String;)Lcom/twitter/model/dms/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->w:Lcom/twitter/model/dms/bd;

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->c:Lcom/twitter/library/provider/b;

    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 132
    return-void

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/s;->i:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->w:Lcom/twitter/model/dms/bd;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/s;->t:Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/s;->x:Lcom/twitter/library/service/aa;

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/s;->s:Lcom/twitter/model/dms/cf;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/library/api/dm/requests/s;->a(Lcom/twitter/model/dms/bd;Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/library/service/aa;Lcom/twitter/model/dms/cf;)V

    .line 179
    return-void
.end method

.method protected a(Lcom/twitter/library/service/aa;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->w:Lcom/twitter/model/dms/bd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Attempting to send a null message."

    invoke-static {v0, v1}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 137
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/s;->x:Lcom/twitter/library/service/aa;

    .line 139
    iget-boolean v0, p0, Lcom/twitter/library/api/dm/requests/s;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->t:Lcom/twitter/model/drafts/DraftAttachment;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->t:Lcom/twitter/model/drafts/DraftAttachment;

    invoke-direct {p0, v0}, Lcom/twitter/library/api/dm/requests/s;->b(Lcom/twitter/model/drafts/DraftAttachment;)V

    .line 144
    :goto_1
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/s;->a()V

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/drafts/DraftAttachment;)V
    .locals 4

    .prologue
    .line 183
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/s;->t:Lcom/twitter/model/drafts/DraftAttachment;

    .line 185
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->b:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/s;->w:Lcom/twitter/model/dms/bd;

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/s;->c:Lcom/twitter/library/provider/b;

    invoke-virtual {v0, v1, p1, v2}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/dms/bd;Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/library/provider/b;)V

    .line 186
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->c:Lcom/twitter/library/provider/b;

    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 188
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/api/dm/requests/x;

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/s;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/s;->n:Lcom/twitter/library/client/Session;

    invoke-direct {v1, v2, v3, p0}, Lcom/twitter/library/api/dm/requests/x;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/api/dm/requests/s;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 190
    return-void
.end method

.method public aB_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Lcom/twitter/library/service/aa;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/s;->m:Ljava/util/Set;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/twitter/library/api/dm/requests/t;

    invoke-direct {v0, p0}, Lcom/twitter/library/api/dm/requests/t;-><init>(Lcom/twitter/library/api/dm/requests/s;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method
