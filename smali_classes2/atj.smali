.class public Latj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/renderablecontent/b;


# instance fields
.field public final a:Lcom/twitter/model/core/Tweet;

.field public final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field public final c:Lcom/twitter/library/media/widget/aa;


# direct methods
.method public constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/media/widget/aa;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Latj;->a:Lcom/twitter/model/core/Tweet;

    .line 78
    iput-object p2, p0, Latj;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 79
    iput-object p3, p0, Latj;->c:Lcom/twitter/library/media/widget/aa;

    .line 80
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Latj;->a:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public b()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Latj;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Latj;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method
