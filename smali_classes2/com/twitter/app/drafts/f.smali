.class public final Lcom/twitter/app/drafts/f;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lavv;

.field private b:Lcom/twitter/app/common/app/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/drafts/d;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/twitter/app/drafts/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/drafts/f;)Lcom/twitter/app/common/app/n;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/app/drafts/f;->b:Lcom/twitter/app/common/app/n;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/app/drafts/f;)Lavv;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/app/drafts/f;->a:Lavv;

    return-object v0
.end method


# virtual methods
.method public a(Lavv;)Lcom/twitter/app/drafts/f;
    .locals 1

    .prologue
    .line 157
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavv;

    iput-object v0, p0, Lcom/twitter/app/drafts/f;->a:Lavv;

    .line 158
    return-object p0
.end method

.method public a(Lcom/twitter/app/common/app/n;)Lcom/twitter/app/drafts/f;
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/n;

    iput-object v0, p0, Lcom/twitter/app/drafts/f;->b:Lcom/twitter/app/common/app/n;

    .line 163
    return-object p0
.end method

.method public a()Lcom/twitter/app/drafts/o;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/app/drafts/f;->a:Lavv;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lavv;

    .line 147
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

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/drafts/f;->b:Lcom/twitter/app/common/app/n;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/twitter/app/common/app/n;

    .line 151
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

    .line 153
    :cond_1
    new-instance v0, Lcom/twitter/app/drafts/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/app/drafts/c;-><init>(Lcom/twitter/app/drafts/f;Lcom/twitter/app/drafts/d;)V

    return-object v0
.end method
