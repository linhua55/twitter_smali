.class public final Lus;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Luv;

.field private b:Lcom/twitter/app/common/app/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luo;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lus;-><init>()V

    return-void
.end method

.method static synthetic a(Lus;)Luv;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lus;->a:Luv;

    return-object v0
.end method

.method static synthetic b(Lus;)Lcom/twitter/app/common/app/n;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lus;->b:Lcom/twitter/app/common/app/n;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/app/n;)Lus;
    .locals 1

    .prologue
    .line 258
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/n;

    iput-object v0, p0, Lus;->b:Lcom/twitter/app/common/app/n;

    .line 259
    return-object p0
.end method

.method public a(Luv;)Lus;
    .locals 1

    .prologue
    .line 253
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luv;

    iput-object v0, p0, Lus;->a:Luv;

    .line 254
    return-object p0
.end method

.method public a()Luu;
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lus;->a:Luv;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Luv;

    .line 243
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lus;->b:Lcom/twitter/app/common/app/n;

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/app/common/app/n;

    .line 247
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    new-instance v0, Lun;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lun;-><init>(Lus;Luo;)V

    return-object v0
.end method
