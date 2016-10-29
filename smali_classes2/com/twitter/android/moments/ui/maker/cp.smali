.class public Lcom/twitter/android/moments/ui/maker/cp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/app/common/inject/InjectedFragmentActivity;

.field private final b:Laeo;

.field private final c:Laer;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/inject/InjectedFragmentActivity;Laeo;Laer;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cp;->a:Lcom/twitter/app/common/inject/InjectedFragmentActivity;

    .line 93
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/cp;->b:Laeo;

    .line 94
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/cp;->c:Laer;

    .line 95
    return-void
.end method


# virtual methods
.method public a(JLcom/twitter/model/moments/ak;Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/ui/maker/co;
    .locals 7

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cp;->a:Lcom/twitter/app/common/inject/InjectedFragmentActivity;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/maker/cp;->b:Laeo;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/maker/cp;->c:Laer;

    move-object v1, p4

    move-wide v2, p1

    move-object v4, p3

    .line 101
    invoke-static/range {v0 .. v6}, Lcom/twitter/android/moments/ui/maker/co;->a(Lcom/twitter/app/common/inject/InjectedFragmentActivity;Lcom/twitter/android/moments/data/maker/a;JLcom/twitter/model/moments/ak;Laeo;Laer;)Lcom/twitter/android/moments/ui/maker/co;

    move-result-object v0

    .line 100
    return-object v0
.end method
