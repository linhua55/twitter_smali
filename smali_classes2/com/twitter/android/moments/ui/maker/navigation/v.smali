.class public Lcom/twitter/android/moments/ui/maker/navigation/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/at;


# static fields
.field public static a:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq;",
            "Lcom/twitter/android/moments/ui/maker/navigation/as;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq;",
            "Lcom/twitter/android/moments/ui/maker/navigation/as;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/w;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/maker/navigation/w;-><init>()V

    sput-object v0, Lcom/twitter/android/moments/ui/maker/navigation/v;->a:Lcom/twitter/util/object/c;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/util/object/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq;",
            "Lcom/twitter/android/moments/ui/maker/navigation/as;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/v;->b:Lcom/twitter/util/object/c;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/v;->b:Lcom/twitter/util/object/c;

    invoke-interface {v0, p1}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/as;

    .line 30
    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/as;->a()Lrx/w;

    move-result-object v0

    return-object v0
.end method
