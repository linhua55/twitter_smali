.class public interface abstract Lcom/twitter/internal/android/widget/p;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lbjs;->state_highlighted:I

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/internal/android/widget/p;->a:[I

    return-void
.end method


# virtual methods
.method public abstract setHighlighted(Z)V
.end method
