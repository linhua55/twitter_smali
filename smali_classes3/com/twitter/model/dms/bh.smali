.class public Lcom/twitter/model/dms/bh;
.super Lcom/twitter/model/dms/n;
.source "Twttr"


# static fields
.field public static final i:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/bh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final j:I

.field public k:I

.field public final l:Lcom/twitter/model/drafts/DraftAttachment;

.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/twitter/model/dms/bj;

    invoke-direct {v0}, Lcom/twitter/model/dms/bj;-><init>()V

    sput-object v0, Lcom/twitter/model/dms/bh;->i:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/bi;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/n;-><init>(Lcom/twitter/model/dms/p;)V

    .line 128
    invoke-static {p1}, Lcom/twitter/model/dms/bi;->a(Lcom/twitter/model/dms/bi;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/dms/bh;->j:I

    .line 129
    invoke-static {p1}, Lcom/twitter/model/dms/bi;->b(Lcom/twitter/model/dms/bi;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/dms/bh;->k:I

    .line 130
    invoke-static {p1}, Lcom/twitter/model/dms/bi;->c(Lcom/twitter/model/dms/bi;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/bh;->l:Lcom/twitter/model/drafts/DraftAttachment;

    .line 131
    invoke-static {p1}, Lcom/twitter/model/dms/bi;->d(Lcom/twitter/model/dms/bi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/bh;->m:Ljava/lang/String;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/bi;Lcom/twitter/model/dms/be;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/bh;-><init>(Lcom/twitter/model/dms/bi;)V

    return-void
.end method
