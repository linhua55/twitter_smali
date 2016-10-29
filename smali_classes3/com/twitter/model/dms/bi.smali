.class public Lcom/twitter/model/dms/bi;
.super Lcom/twitter/model/dms/p;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/p",
        "<",
        "Lcom/twitter/model/dms/bi;",
        "Lcom/twitter/model/dms/bh;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/twitter/model/drafts/DraftAttachment;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/twitter/model/dms/p;-><init>()V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/dms/bh;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/p;-><init>(Lcom/twitter/model/dms/n;)V

    .line 145
    iget v0, p1, Lcom/twitter/model/dms/bh;->j:I

    iput v0, p0, Lcom/twitter/model/dms/bi;->a:I

    .line 146
    iget v0, p1, Lcom/twitter/model/dms/bh;->k:I

    iput v0, p0, Lcom/twitter/model/dms/bi;->b:I

    .line 147
    iget-object v0, p1, Lcom/twitter/model/dms/bh;->l:Lcom/twitter/model/drafts/DraftAttachment;

    iput-object v0, p0, Lcom/twitter/model/dms/bi;->c:Lcom/twitter/model/drafts/DraftAttachment;

    .line 148
    iget-object v0, p1, Lcom/twitter/model/dms/bh;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/dms/bi;->d:Ljava/lang/String;

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/bi;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/twitter/model/dms/bi;->a:I

    return v0
.end method

.method static synthetic b(Lcom/twitter/model/dms/bi;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/twitter/model/dms/bi;->b:I

    return v0
.end method

.method static synthetic c(Lcom/twitter/model/dms/bi;)Lcom/twitter/model/drafts/DraftAttachment;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/dms/bi;->c:Lcom/twitter/model/drafts/DraftAttachment;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/model/dms/bi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/dms/bi;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/model/dms/bi;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/twitter/model/dms/bi;->c:Lcom/twitter/model/drafts/DraftAttachment;

    .line 166
    return-object p0
.end method

.method public b(I)Lcom/twitter/model/dms/bi;
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lcom/twitter/model/dms/bi;->a:I

    .line 160
    return-object p0
.end method

.method public c(I)Lcom/twitter/model/dms/bi;
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/twitter/model/dms/bi;->b:I

    .line 172
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/dms/bi;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/twitter/model/dms/bi;->d:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/twitter/model/dms/bi;->e()Lcom/twitter/model/dms/bh;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/bh;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lcom/twitter/model/dms/bh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/bh;-><init>(Lcom/twitter/model/dms/bi;Lcom/twitter/model/dms/be;)V

    return-object v0
.end method
