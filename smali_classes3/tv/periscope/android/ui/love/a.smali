.class Ltv/periscope/android/ui/love/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/ui/love/c;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/love/HeartContainerView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/love/HeartContainerView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Ltv/periscope/android/ui/love/a;->a:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltv/periscope/android/ui/love/HeartView;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public b(Ltv/periscope/android/ui/love/HeartView;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ltv/periscope/android/ui/love/a;->a:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-static {v0}, Ltv/periscope/android/ui/love/HeartContainerView;->a(Ltv/periscope/android/ui/love/HeartContainerView;)Ltv/periscope/android/ui/love/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/love/n;->a(Ltv/periscope/android/ui/love/HeartView;)Z

    .line 50
    return-void
.end method
