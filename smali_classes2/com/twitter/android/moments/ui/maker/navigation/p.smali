.class public Lcom/twitter/android/moments/ui/maker/navigation/p;
.super Lcom/twitter/android/moments/ui/maker/navigation/an;
.source "Twttr"


# instance fields
.field private final b:Lcom/twitter/model/moments/viewmodels/MomentPage;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/navigation/an;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/p;->b:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/p;->b:Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object v0
.end method
