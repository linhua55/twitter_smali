.class public interface abstract Lcom/twitter/library/av/playback/al;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/library/av/playback/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/twitter/library/av/playback/am;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/am;-><init>()V

    sput-object v0, Lcom/twitter/library/av/playback/al;->a:Lcom/twitter/library/av/playback/al;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(ZI)V
.end method

.method public abstract a(ZLjava/lang/Exception;)V
.end method
