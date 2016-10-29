.class public interface abstract Lcom/twitter/android/moments/ui/maker/eh;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/android/moments/ui/maker/eh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/twitter/android/moments/ui/maker/ei;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/maker/ei;-><init>()V

    sput-object v0, Lcom/twitter/android/moments/ui/maker/eh;->a:Lcom/twitter/android/moments/ui/maker/eh;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;)Landroid/graphics/Bitmap;
.end method
