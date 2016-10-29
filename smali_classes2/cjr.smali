.class public Lcjr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/renderablecontent/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/library/widget/renderablecontent/b",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/twitter/model/core/Tweet;

.field public final b:I

.field public final c:I

.field public final d:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;II)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcjr;->a:Lcom/twitter/model/core/Tweet;

    .line 121
    iput p3, p0, Lcjr;->b:I

    .line 122
    iput p4, p0, Lcjr;->c:I

    .line 123
    iput-object p2, p0, Lcjr;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 124
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcjr;->a:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public b()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcjr;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcjr;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method
