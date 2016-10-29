.class public Lcom/twitter/android/moments/data/bk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcep",
            "<",
            "Ljava/lang/String;",
            "Lcrc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcep;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcep",
            "<",
            "Ljava/lang/String;",
            "Lcrc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/twitter/android/moments/data/bk;->a:Lcep;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcrc;)Lrx/ap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/moments/data/bk;->a:Lcep;

    invoke-virtual {v0, p1, p2}, Lcep;->b(Ljava/lang/Object;Ljava/lang/Object;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method
