.class public Lcom/twitter/model/timeline/ai;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/model/timeline/ai;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/model/timeline/ak;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ak;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/model/timeline/ak;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ai;

    sput-object v0, Lcom/twitter/model/timeline/ai;->a:Lcom/twitter/model/timeline/ai;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/timeline/ak;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/twitter/model/timeline/ak;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/ai;->b:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/twitter/model/timeline/ak;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/ai;->c:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/twitter/model/timeline/ak;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/ai;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/ak;Lcom/twitter/model/timeline/aj;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/twitter/model/timeline/ai;-><init>(Lcom/twitter/model/timeline/ak;)V

    return-void
.end method
