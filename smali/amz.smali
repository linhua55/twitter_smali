.class public Lamz;
.super Lamy;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/moments/viewmodels/MomentPage;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lamy;-><init>()V

    .line 12
    iput-object p1, p0, Lamz;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lamz;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object v0
.end method
