.class public Lbqb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbqa;


# instance fields
.field private final a:Lcfe;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "0"

    invoke-static {p1, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lbqb;->b:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lbqb;->c:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcfe;->a()Lcfe;

    move-result-object v0

    iput-object v0, p0, Lbqb;->a:Lcfe;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "modern_guide"

    return-object v0
.end method

.method public a(Lcom/twitter/library/service/e;)V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcfe;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbqb;->a:Lcfe;

    invoke-virtual {v1}, Lcfe;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 55
    iget-object v0, p0, Lbqb;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "category_id"

    iget-object v1, p0, Lbqb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 58
    :cond_0
    return-void
.end method

.method public b()Lcom/twitter/internal/network/HttpOperation$RequestMethod;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbqb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    return v0
.end method
