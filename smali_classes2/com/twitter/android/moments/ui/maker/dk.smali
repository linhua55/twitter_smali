.class public Lcom/twitter/android/moments/ui/maker/dk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/android/moments/ui/maker/dn;

.field private final c:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/dn;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/dk;->a:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/dk;->b:Lcom/twitter/android/moments/ui/maker/dn;

    .line 34
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/dk;->c:Lcom/twitter/android/moments/data/maker/a;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/dk;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dk;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/ui/maker/dk;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/android/moments/ui/maker/dk;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/dn;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/dn;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/twitter/android/moments/ui/maker/dk;-><init>(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/dn;Lcom/twitter/android/moments/data/maker/a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/dk;J)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/dk;->c(J)V

    return-void
.end method

.method private c(J)V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dk;->c:Lcom/twitter/android/moments/data/maker/a;

    new-instance v0, Lcom/twitter/model/moments/maker/l;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/l;-><init>()V

    sget-object v2, Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;->c:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 64
    invoke-virtual {v0, v2}, Lcom/twitter/model/moments/maker/l;->a(Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;)Lcom/twitter/model/moments/maker/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    .line 63
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;)V

    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dk;->c:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->c()Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/dm;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/dm;-><init>(Lcom/twitter/android/moments/ui/maker/dk;J)V

    invoke-virtual {v0, v1}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    .line 82
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dk;->b:Lcom/twitter/android/moments/ui/maker/dn;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/dk;->b(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/dn;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    return-void
.end method

.method b(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/android/moments/ui/maker/dl;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/dl;-><init>(Lcom/twitter/android/moments/ui/maker/dk;J)V

    return-object v0
.end method
