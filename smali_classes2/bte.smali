.class public Lbte;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbtd;


# instance fields
.field private final a:Lcom/twitter/android/timeline/br;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/br;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbte;->a:Lcom/twitter/android/timeline/br;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/timeline/cp;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbte;->a:Lcom/twitter/android/timeline/br;

    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->d()Lcom/twitter/android/timeline/cp;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/twitter/android/timeline/cp;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbte;->a:Lcom/twitter/android/timeline/br;

    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->e()Lcom/twitter/android/timeline/cp;

    move-result-object v0

    return-object v0
.end method
