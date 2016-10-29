.class public Lcom/twitter/android/moments/ui/maker/navigation/t;
.super Lcom/twitter/android/moments/ui/maker/navigation/an;
.source "Twttr"


# instance fields
.field private final b:Lcom/twitter/model/moments/viewmodels/m;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/navigation/an;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/t;->b:Lcom/twitter/model/moments/viewmodels/m;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/viewmodels/m;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/t;->b:Lcom/twitter/model/moments/viewmodels/m;

    return-object v0
.end method
